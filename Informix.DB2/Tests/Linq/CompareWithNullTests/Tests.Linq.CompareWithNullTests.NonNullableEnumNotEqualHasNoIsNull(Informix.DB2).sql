-- Informix.DB2 Informix
SELECT
	p.Id,
	p.MyEnum,
	p.MyEnum2
FROM
	EnumFilterEntity p
WHERE
	p.MyEnum2 <> 0

