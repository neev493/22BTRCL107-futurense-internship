-- PROBLEM STATEMENT 11 - NEEV SHAH
SELECT p.pharmacyName, COUNT(*) AS total_prescriptions FROM pharmacy p
JOIN prescription pr ON p.pharmacyID = pr.pharmacyID
JOIN contain c ON pr.prescriptionID = c.prescriptionID
JOIN medicine m ON c.medicineID = m.medicineID
JOIN treatment t ON pr.treatmentID = t.treatmentID
WHERE m.hospitalExclusive = 'S' AND YEAR(t.date) IN (2021, 2022) GROUP BY p.pharmacyName ORDER BY total_prescriptions DESC;




-- PROBLEM STATEMENT 12 - HARSHITHA.Y
SELECT IP.planName,IC.companyName, COUNT(T.treatmentID) AS numTreatments FROM InsurancePlan IP
JOIN InsuranceCompany IC ON IP.companyID = IC.companyID
JOIN Claim CL ON IP.UIN = CL.UIN
JOIN Treatment T ON CL.claimID = T.claimID
GROUP BY IP.planName, IC.companyName ORDER BY numTreatments DESC;


-- PROBLEM STATEMENT 13 - AKASH SHRUSTI
SELECT IC.companyName, IP.planName, COUNT(T.treatmentID) AS numTreatments,
CASE
	WHEN COUNT(T.treatmentID) = MAX(COUNT(T.treatmentID)) OVER (PARTITION BY IC.companyName) THEN 'Most Claimed'
	WHEN COUNT(T.treatmentID) = MIN(COUNT(T.treatmentID)) OVER (PARTITION BY IC.companyName) THEN 'Least Claimed'
ELSE NULL
END AS ClaimStatus
FROM InsurancePlan IP
JOIN InsuranceCompany IC ON IP.companyID = IC.companyID
JOIN Claim CL ON IP.UIN = CL.UIN
JOIN Treatment T ON CL.claimID = T.claimID GROUP BY IC.companyName, IP.planName ORDER BY IC.companyName, ClaimStatus DESC, numTreatments DESC;

    
-- PROBLEM STATEMENT 14 - HARIKA
SELECT A.state,
    COUNT(DISTINCT P.personID) AS numPeople,
    COUNT(DISTINCT Pat.spatientID) AS numPatients,
    COUNT(DISTINCT P.personID) / COUNT(DISTINCT Pat.patientID) AS peopleToPatientRatio
FROM Person P JOIN Address A ON P.addressID = A.addressID LEFT JOIN Patient Pat ON P.personID = Pat.patientID GROUP BY A.state ORDER BY peopleToPatientRatio;
    
    
-- PROBLEM STATEMENT 15 - HARSHITHA.Y
SELECT P.pharmacyName, SUM(C.quantity) AS totalQuantity FROM Pharmacy P
JOIN Prescription Pres ON P.pharmacyID = Pres.pharmacyID
JOIN Treatment T ON Pres.treatmentID = T.treatmentID
JOIN Contain C ON Pres.prescriptionID = C.prescriptionID
JOIN Medicine M ON C.medicineID = M.medicineID
JOIN Address A ON P.addressID = A.addressID
WHERE A.state = 'AZ' AND M.taxCriteria = 'I' AND YEAR(T.date) = 2021 GROUP BY P.pharmacyName ORDER BY totalQuantity DESC;