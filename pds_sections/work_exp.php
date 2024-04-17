<div class="container-fluid">
    <div class="row mt-4 text-center align-items-end">
        <div class="col-3">
            <div class="row ms-5">
                <p class="mb-0">INCLUSIVE DATES</p>
                <p>(mm/dd/yy)</p>
            </div>
            <div class="row ms-5">
                <div class="col">
                    <p>FROM</p>
                </div>
                <div class="col">
                    <p>TO</p>
                </div>
            </div>
        </div>
        <div class="col-2">
            <p>
                POSITION TITLE<br>
                (Write in full / Do not abbreviate)
            </p>
        </div>
        <div class="col-2">
            <p>
                DEPARTMENT/AGENCY/<br>OFFICE/COMPANY<br>(Write in full / Do not abbreviate)
            </p>
        </div>
        <div class="col-1">
            <p>MONTHLY SALARY</p>
        </div>
        <div class="col-1">
            <p>
                SALARY/JOB/PAY GRADE (if applicable) & STEP (Format "00-0")/<br>INCREMENT
            </p>
        </div>
        <div class="col-2">
            <p>STATUS OF APPOINTMENT</p>
        </div>
        <div class="col-1">
            <p>GOV'T SERVICE (Y/N)</p>
        </div>
    </div>

    <div class="row-container text-center">
        <div class="row row-row mt-3">
            <div class="col-3">
                <div class="checkbox-container">
                    <div class="form-check me-2 remove_na">
                        <input class="form-check-input" type="checkbox" id="null_work_exp">
                        <label class="form-check-label" for="null_work_exp">N/A</label>
                    </div>
                    <button type="button" class="delete-row-button mx-3"
                        style="display:none; background-color: transparent; border: none; color: red;">
                    </button>
                    <div class="row">
                        <div class="col-6">
                            <input type="date" required name="we_date_from[]" id="we_date_from"
                                class="form-control group_na">
                        </div>
                        <div class="col-6">
                            <input type="date" required name="we_date_to[]" id="we_date_to"
                                class="form-control group_na">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-2">
                <input type="text" name="we_position[]" id="we_position" class="form-control group_na" required>
            </div>
            <div class="col-2">
                <input type="text" name="we_agency[]" id="we_agency" class="form-control group_na" required>
            </div>
            <div class="col-1">
                <input type="text" name="we_salary[]" id="we_salary" class="form-control group_na" required>
            </div>
            <div class="col-1">
                <input type="text" name="we_sg[]" id="we_sg" class="form-control group_na" required>
            </div>
            <div class="col-2">
                <input type="text" name="we_status[]" id="we_status" class="form-control group_na" required>
            </div>
            <div class="col-1">
                <select required name="we_govtsvcs[]" id="we_govtsvcs" class="form-select group_na">
                    <option value="" disabled selected value>--select--</option>
                    <option value='Y'>Yes</option>
                    <option value='N'>No</option>
                </select>
            </div>
        </div>
    </div>

    <!-- BUTTON -->
    <div class="row">
        <div class="col-3">
            <br><button type="button" class="btn btn-primary add-row-button" name="we_addrow" id="we_addrow"
                onclick="addRow()">ADD ROW</button>
        </div>
    </div>
</div>

<script>
    // ============================ N/A Array Disable ============================
    function setupNullInputArray(checkboxId, inputIds) {
        const checkbox = document.getElementById(checkboxId);
        const inputs = inputIds.map((id) => document.getElementById(id));

        checkbox.addEventListener("change", function () {
            if (this.checked) {
                inputs.forEach((input) => {

                    input.type = "text";
                    input.value = "N/A";
                    input.disabled = true;
                });
                // Remove cloned rows if they exist
                const clonedRows = document.querySelectorAll(".row-container .row-row");
                clonedRows.forEach((clonedRow) => {
                    if (clonedRow !== checkbox.closest('.row-row')) {
                        clonedRow.remove();
                    }
                });
            } else {
                inputs.forEach((input) => {

                    input.id == "we_date_from" || input.id == "we_date_to" ? input.type = "date" :
                        input.type = "text";

                    input.value = "";
                    input.disabled = false;
                });
            }
        });
    }

    // WORK EXPERIENCE
    setupNullInputArray("null_work_exp", [
        "we_date_from",
        "we_date_to",
        "we_position",
        "we_agency",
        "we_salary",
        "we_sg",
        "we_status",
        "we_govtsvcs",
        "we_addrow",
    ]);

    // =================================== Add Row ===================================
    function addRow() {
        // Clone the input-row element
        var newRow = document.querySelector(".row-row").cloneNode(true);

        // Clear input values in the cloned row
        newRow.querySelectorAll("input").forEach((input) => {
            input.value = "";
        });

        // Append the cloned row to the container
        document.querySelector(".row-container").appendChild(newRow);

        //Remove the n/a checkbox and its associated text from the cloned row
        const clonedNaCheckbox = newRow.querySelector(".remove_na");
        if (clonedNaCheckbox) {
            clonedNaCheckbox.parentNode.removeChild(clonedNaCheckbox);
        }
        const deleteButton = newRow.querySelector(".delete-row-button");
        if (deleteButton) {
            deleteButton.innerHTML = '<i class="bi bi-x-lg"></i>';
            deleteButton.style.display = "inline-block";
            deleteButton.addEventListener("click", function () {
                newRow.parentNode.removeChild(newRow);
            });
        }

        // Change the N/A checkbox to a delete button
        // var checkbox = newRow.querySelector(".form-check-input");
        // checkbox.checked = false; // Uncheck the checkbox
        // checkbox.id = ""; // Remove id to avoid duplication
        // checkbox.removeAttribute("onclick"); // Remove onclick event
        // checkbox.setAttribute("type", "button"); // Change type to button
        // checkbox.setAttribute("onclick", "deleteRow(this)"); // Add delete function
        // checkbox.nextElementSibling.textContent = "Delete"; // Change label text
    }

    // =============== Delete Row ===============
    // function deleteRow(button) {
    //     var row = button.closest(".row-row");
    //     row.remove();
    // }
</script>