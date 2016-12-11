<%-- 
    Document   : diagnose
    Created on : 24-Nov-2016, 21:31:52
    Author     : Samson
--%>

<%@page import="Data.DiagnosisResult"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    boolean showBanner = false;
    String masterHead = "Diagnosis";
    DiagnosisResult diag = null;
    String questions[] = {
        "Personal Information",
        "Location",
        "Body mass Index",
        "Vaccination",
        "Diet",
        "Do you have a significant family health issue. Check as appropriate",
        "Do you have a current health issue. Check as appropriate",
        "Are you currently on medication",
        "Alcoholic",
        "Drug Addiction",
        "Questionaire Completed",
        "Questionaire Completed",
    };
    boolean starting = false;
    if (request.getQueryString() != null) {
        starting = true;
        session.removeAttribute("diagnosis");
        session.removeAttribute("stage");
    }
    int stage = 0;
    if (!starting) {
        Object ob = session.getAttribute("stage");
        if (ob != null) {
            String ss = ob.toString();
            if (ss != null) {
                stage = Integer.parseInt(ss);
            }
        }
        diag = (DiagnosisResult) session.getAttribute("diagnosis");
    }
    if (diag == null) {
        diag = new DiagnosisResult();
    } else {
        try {
            switch (stage) {
                case 0:
                    diag.userName = request.getParameter("name");
                    diag.userSex = request.getParameter("sex");
                    diag.userOccupation = request.getParameter("job");
                    diag.userMarried = request.getParameter("marital");
                    diag.userEthnic = request.getParameter("ethnic");
//diag.userDateOfBirth = request.getParameter("dateBirth");
                    break;
                case 1:
                    diag.userBirthAddress = request.getParameter("birthPlace");
                    diag.userResidenceAddress = request.getParameter("residence");
                    diag.userCurrentLocationAddress = request.getParameter("location");
                    break;
                case 2:
                    diag.userHeight = Double.parseDouble(request.getParameter("height"));
                    diag.userWeight = Double.parseDouble(request.getParameter("weight"));
                    break;
                case 3:
                    if (request.getParameter("tetanus") != null) {
                        diag.userVaccinationTetanus = request.getParameter("tetanus").equals("on");
                    } else {
                        diag.userVaccinationTetanus = false;
                    }
                    if (request.getParameter("whoopcough") != null) {
                        diag.userVaccineWhoopingCoughOrpertussis = request.getParameter("whoopcough").equals("on");
                    } else {
                        diag.userVaccineWhoopingCoughOrpertussis = false;
                    }
                    if (request.getParameter("hepatitis") != null) {
                        diag.userVaccineHepatitisB = request.getParameter("hepatitis").equals("on");
                    } else {
                        diag.userVaccineHepatitisB = false;
                    }
                    if (request.getParameter("smallpox") != null) {
                        diag.userVaccineSmallPox = request.getParameter("smallpox").equals("on");
                    } else {
                        diag.userVaccineSmallPox = false;
                    }
                    break;
                case 4:
                    diag.userDiet = request.getParameter("vegetarian");
                    break;
                case 5:
                    if (request.getParameter("fheartdisease") != null) {
                        diag.userFamilyHeartDisease = request.getParameter("fheartdisease").equals("on");
                    } else {
                        diag.userFamilyHeartDisease = false;
                    }
                    if (request.getParameter("fhypertension") != null) {
                        diag.userFamilyHypertension = request.getParameter("fhypertension").equals("on");
                    } else {
                        diag.userFamilyHypertension = false;
                    }
                    if (request.getParameter("fhighcholesterol") != null) {
                        diag.userFamilyHypertension = request.getParameter("fhighcholesterol").equals("on");
                    } else {
                        diag.userFamilyHypertension = false;
                    }
                    break;
                case 6:
                    if (request.getParameter("cheartdisease") != null) {
                        diag.userHeartDisease = request.getParameter("cheartdisease").equals("on");
                    } else {
                        diag.userHeartDisease = false;
                    }
                    if (request.getParameter("chypertension") != null) {
                        diag.userHypertension = request.getParameter("chypertension").equals("on");
                    } else {
                        diag.userHypertension = false;
                    }
                    if (request.getParameter("chighcholesterol") != null) {
                        diag.userHighCholesterol = request.getParameter("chighcholesterol").equals("on");
                    } else {
                        diag.userHighCholesterol = false;
                    }
                    break;
                case 7:
                    diag.userOnMedication = request.getParameter("medicating").equals("yes");
                    break;
                case 8:
                    diag.userAlcoholic = request.getParameter("alcoholic").equals("yes");
                    if (diag.userAlcoholic) {
                        diag.userDaysInAlcoholic = Integer.parseInt(request.getParameter("drinkingdays"));
                        diag.userDaysOutAlcoholic = Integer.parseInt(request.getParameter("nodrinkingdays"));
                    }
                    break;
                case 9:
                    diag.userDrugAddict = request.getParameter("drugaddict").equals("yes");
                    if (diag.userDrugAddict) {
                        diag.userDaysInAlcoholic = Integer.parseInt(request.getParameter("druggingdays"));
                        diag.userDaysOutAlcoholic = Integer.parseInt(request.getParameter("nodruggingdays"));
                    }
                    break;
                case 10:
                    response.sendRedirect("diagnoseResult.jsp");
            }
            stage++;
        } catch (Exception e) {
        }
    }
    session.setAttribute("stage", "" + stage);
    session.setAttribute("diagnosis", diag);

%>
<%@include file="masterBegin.jsp" %>
<form method="post" class="diagnose" action="diagnose.jsp">
    <input type="hidden" name="stage" value="<%=stage%>"/>
    <h4><%=questions[stage]%></h4>
    <br>
    <br>
    <%switch (stage) {
            case 0:
    %>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Name:
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="text" name="name" class="text-info text-primary"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Sex:
            </label>
        </div>
        <div class ="col-sm-9">
            <select name="sex" class="text-info text-primary">
                <option value="Male">Male</option>
                <option value="Female">Female</option>
            </select>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Occupation:
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="text" name="job" class="text-info text-primary"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Marital Status:
            </label>
        </div>
        <div class ="col-sm-9">
            <select name="marital" class="text-info text-primary">
                <option value="Single">Single</option>
                <option value="Married">Married</option>
            </select>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Ethnicity:
            </label>
        </div>
        <div class ="col-sm-9">
            <select name="ethnic" class="text-info text-primary">
                <option value="Yoruba">Yoruba</option>
                <option value="Hausa">Hausa</option>
                <option value="Igboa">Igbo</option>
                <option value="Fulani">Fulani</option>
            </select>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Date of Birth:
            </label>
        </div>
        <div class ="col-sm-9">
            <input class="date" name="dateBirth" id="datepicker" type="text" value="19/10/2016" onfocus="this.value = '';" onblur="if (this.value == '') {
                        this.value = '19/10/2016';
                    }" required="">
        </div>
    </div>
    <%break;
        case 1:%>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Birth Place:
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="text" name="birthPlace" class="text-info text-primary"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Residence:
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="text" name="residence" class="text-info text-primary"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Current Location:
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="text" name="location" class="text-info text-primary"/>
        </div>
    </div>
    <%break;
        case 2:%>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Height(kg):
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="text" name="height" class="text-info text-primary"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Weight(kg):
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="text" name="weight" class="text-info text-primary"/>
        </div>
    </div>
    <%break;
        case 3:%>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Tetanus:
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="checkbox" name="tetanus" class="text-info text-primary"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Whooping Cough:
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="checkbox" name="whoopcough" class="text-info text-primary"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Hepatitis B:
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="checkbox" name="hepatitis" class="text-info text-primary"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Smallpox:
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="checkbox" name="smallpox" class="text-info text-primary"/>
        </div>
    </div>

    <%break;
        case 4:%>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Diet:
            </label>
        </div>
        <div class ="col-sm-9">
            <select name="vegetarian" class="text-info text-primary">
                <option value="Vegetarian">Vegetarian</option>
                <option value="none">None</option>
            </select>
        </div>
    </div>
    <%break;
        case 5:%>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Heart disease:
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="checkbox" name="fheartdisease" class="text-info text-primary"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Hypertension:
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="checkbox" name="fhypertension" class="text-info text-primary"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <label>
                High Cholesterol:
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="checkbox" name="fhighcholesterol" class="text-info text-primary"/>
        </div>
    </div>

    <%break;
        case 6:%>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Heart disease:
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="checkbox" name="cheartdisease" class="text-info text-primary"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Hypertension:
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="checkbox" name="chypertension" class="text-info text-primary"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <label>
                High Cholesterol:
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="checkbox" name="chighcholesterol" class="text-info text-primary"/>
        </div>
    </div>

    <%break;
        case 7:%>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Medicating:
            </label>
        </div>
        <div class ="col-sm-9">
            <select name="medicating" class="text-info text-primary">
                <option value="no">No</option>
                <option value="yes">Yes</option>
            </select>
        </div>
    </div>

    <%break;
        case 8:%>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Are/Were you alcoholic:
            </label>
        </div>
        <div class ="col-sm-9">
            <select name="alcoholic" class="text-info text-primary">
                <option value="no">No</option>
                <option value="yes">Yes</option>
            </select>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <label>
                How long(in days) have you been drinking
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="text" name="drinkingdays" class="text-info text-primary"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <label>
                How long(in days) have you stopped
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="text" name="nodrinkingdays" class="text-info text-primary"/>
        </div>
    </div>

    <%break;
        case 9:%>
    <div class="row">
        <div class="col-sm-3">
            <label>
                Are/Were you a drug addict:
            </label>
        </div>
        <div class ="col-sm-9">
            <select name="drugaddict" class="text-info text-primary">
                <option value="no">No</option>
                <option value="yes">Yes</option>
            </select>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <label>
                How long(in days) have you been using
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="text" name="druggingdays" class="text-info text-primary"/>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <label>
                How long(in days) have you stopped
            </label>
        </div>
        <div class ="col-sm-9">
            <input type="text" name="nodruggingdays" class="text-info text-primary"/>
        </div>
    </div>


    <%break;
        case 10:%>
        Diagnosis Completed
    <%break;
        case 11:%>

    <%break;
        case 12:%>

    <%break;
        case 13:%>

    <%break;
        }%>

    <div class="row">
        <div class="col-sm-12 text-right">
            <input type="submit" class="btn-primary btn-default btn-block btn btn-success" name="submit" value="Submit"/>
        </div>
    </div>
</form>
<%@include file="masterEnd.jsp" %>