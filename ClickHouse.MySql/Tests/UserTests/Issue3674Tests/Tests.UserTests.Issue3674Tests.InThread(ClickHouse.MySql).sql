BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.Id,
	p.Code,
	p.DIM_Company,
	p.DIM_Branch,
	p.DIM_Location,
	p.DIM_MSegment,
	p.DIM_Make
FROM
	Issue3674Tests p
WHERE
	p.Code = '42' AND
	(p.DIM_Company IS NULL OR p.DIM_Company = '' OR p.DIM_Company = '1' OR p.DIM_Company = '2' OR p.DIM_Company = '3' OR p.DIM_Company = '4' OR p.DIM_Company = '5' OR p.DIM_Company = '6' OR p.DIM_Company = '7' OR p.DIM_Company = '8' OR p.DIM_Company = '9' OR p.DIM_Company = '0') AND
	(p.DIM_Branch IS NULL OR p.DIM_Branch = '' OR p.DIM_Branch = '1' OR p.DIM_Branch = '2' OR p.DIM_Branch = '3' OR p.DIM_Branch = '4' OR p.DIM_Branch = '5' OR p.DIM_Branch = '6' OR p.DIM_Branch = '7' OR p.DIM_Branch = '8' OR p.DIM_Branch = '9' OR p.DIM_Branch = '0') AND
	(p.DIM_Location IS NULL OR p.DIM_Location = '' OR p.DIM_Location = '1' OR p.DIM_Location = '2' OR p.DIM_Location = '3' OR p.DIM_Location = '4' OR p.DIM_Location = '5' OR p.DIM_Location = '6' OR p.DIM_Location = '7' OR p.DIM_Location = '8' OR p.DIM_Location = '9' OR p.DIM_Location = '0') AND
	(p.DIM_MSegment IS NULL OR p.DIM_MSegment = '' OR p.DIM_MSegment = '1' OR p.DIM_MSegment = '2' OR p.DIM_MSegment = '3' OR p.DIM_MSegment = '4' OR p.DIM_MSegment = '5' OR p.DIM_MSegment = '6' OR p.DIM_MSegment = '7' OR p.DIM_MSegment = '8' OR p.DIM_MSegment = '9' OR p.DIM_MSegment = '0') AND
	(p.DIM_Make IS NULL OR p.DIM_Make = '' OR p.DIM_Make = '1' OR p.DIM_Make = '2' OR p.DIM_Make = '3' OR p.DIM_Make = '4' OR p.DIM_Make = '5' OR p.DIM_Make = '6' OR p.DIM_Make = '7' OR p.DIM_Make = '8' OR p.DIM_Make = '9' OR p.DIM_Make = '0')
LIMIT 1

