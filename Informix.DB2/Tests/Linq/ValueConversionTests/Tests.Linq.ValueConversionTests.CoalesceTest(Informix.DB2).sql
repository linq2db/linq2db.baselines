-- Informix.DB2 Informix

SELECT
	Nvl(t1.EnumNullable, t1.Enum)
FROM
	ValueConversion t1

