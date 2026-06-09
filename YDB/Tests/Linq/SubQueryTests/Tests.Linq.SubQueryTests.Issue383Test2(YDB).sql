-- YDB Ydb

SELECT
	a.First_Name as First_Name,
	a.Last_Name as Last_Name,
	d.Distributor_Name as Distributor_Name,
	cp.Street_Number as Street_Number,
	cp.Street_Name as Street_Name,
	c_1.City_Name as City_Name,
	cp.`State` as State_1,
	cp.Zip_Code as Zip_Code,
	cp.Zip_Plus_4 as Zip_Plus_4,
	cd.Effective_Date as Effective_Date
FROM
	Contract_Distributor_Agent cda
		INNER JOIN Agent a ON cda.Agent_Id = a.Agent_Id
		INNER JOIN Distributor d ON cda.Distributor_Id = d.Distributor_Id
		INNER JOIN Distributor_Commercial_Propert dcp ON d.Distributor_Id = dcp.Distributor_Id
		INNER JOIN Commercial_Property cp ON dcp.Commercial_Property_Id = cp.Commercial_Property_Id
		INNER JOIN Contract_Dates cd ON cda.Contract_Id = cd.Contract_Id
		INNER JOIN Cities c_1 ON c_1.City_Code = cp.City_Code
WHERE
	cda.Contract_Id = 198827882 AND
	cda.Distributor_Type_Code = 'CC'u AND
	cda.Distributor_Agent_Type_Prefix = 'OFFICE'u AND
	cda.Represents_Type_Prefix = 'REPRESENTS'u AND
	cd.Type_Code = 'ESTCOE'u AND
	d.Type_Code = 'RE'u AND
	dcp.Distributor_Type_Code = 'RE'u

