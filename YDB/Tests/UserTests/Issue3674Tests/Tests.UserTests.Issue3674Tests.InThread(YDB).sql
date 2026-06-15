-- YDB Ydb

SELECT
	p.Id as Id,
	p.Code as Code,
	p.DIM_Company as DIM_Company,
	p.DIM_Branch as DIM_Branch,
	p.DIM_Location as DIM_Location,
	p.DIM_MSegment as DIM_MSegment,
	p.DIM_Make as DIM_Make
FROM
	Issue3674Tests p
WHERE
	p.Code = '42'u AND
	(p.DIM_Company IS NULL OR p.DIM_Company = ''u OR p.DIM_Company = '1'u OR p.DIM_Company = '2'u OR p.DIM_Company = '3'u OR p.DIM_Company = '4'u OR p.DIM_Company = '5'u OR p.DIM_Company = '6'u OR p.DIM_Company = '7'u OR p.DIM_Company = '8'u OR p.DIM_Company = '9'u OR p.DIM_Company = '0'u) AND
	(p.DIM_Branch IS NULL OR p.DIM_Branch = ''u OR p.DIM_Branch = '1'u OR p.DIM_Branch = '2'u OR p.DIM_Branch = '3'u OR p.DIM_Branch = '4'u OR p.DIM_Branch = '5'u OR p.DIM_Branch = '6'u OR p.DIM_Branch = '7'u OR p.DIM_Branch = '8'u OR p.DIM_Branch = '9'u OR p.DIM_Branch = '0'u) AND
	(p.DIM_Location IS NULL OR p.DIM_Location = ''u OR p.DIM_Location = '1'u OR p.DIM_Location = '2'u OR p.DIM_Location = '3'u OR p.DIM_Location = '4'u OR p.DIM_Location = '5'u OR p.DIM_Location = '6'u OR p.DIM_Location = '7'u OR p.DIM_Location = '8'u OR p.DIM_Location = '9'u OR p.DIM_Location = '0'u) AND
	(p.DIM_MSegment IS NULL OR p.DIM_MSegment = ''u OR p.DIM_MSegment = '1'u OR p.DIM_MSegment = '2'u OR p.DIM_MSegment = '3'u OR p.DIM_MSegment = '4'u OR p.DIM_MSegment = '5'u OR p.DIM_MSegment = '6'u OR p.DIM_MSegment = '7'u OR p.DIM_MSegment = '8'u OR p.DIM_MSegment = '9'u OR p.DIM_MSegment = '0'u) AND
	(p.DIM_Make IS NULL OR p.DIM_Make = ''u OR p.DIM_Make = '1'u OR p.DIM_Make = '2'u OR p.DIM_Make = '3'u OR p.DIM_Make = '4'u OR p.DIM_Make = '5'u OR p.DIM_Make = '6'u OR p.DIM_Make = '7'u OR p.DIM_Make = '8'u OR p.DIM_Make = '9'u OR p.DIM_Make = '0'u)
LIMIT 1

