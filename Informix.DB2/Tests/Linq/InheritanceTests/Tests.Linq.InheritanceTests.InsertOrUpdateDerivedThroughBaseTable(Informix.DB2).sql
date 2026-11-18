-- Informix.DB2 Informix
UPDATE
	InheritanceFilter t1
SET
	Child1Field = 66
WHERE
	t1.Id = 1

-- Informix.DB2 Informix
INSERT INTO InheritanceFilter
(
	Id,
	Code,
	Child1Field
)
VALUES
(
	1,
	1,
	55
)

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1.Code,
	t1.Child1Field
FROM
	InheritanceFilter t1
WHERE
	t1.Code IN (12, 11, 1)

-- Informix.DB2 Informix
UPDATE
	InheritanceFilter t1
SET
	Child1Field = 66
WHERE
	t1.Id = 1

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1.Code,
	t1.Child1Field
FROM
	InheritanceFilter t1
WHERE
	t1.Code IN (12, 11, 1)

