BeforeExecute
-- Informix.DB2 Informix

SELECT
	arg.Id,
	arg."Value"
FROM
	Person entity
		INNER JOIN (
			SELECT 1::Int AS Id, 1::BigInt AS "Value" FROM table(set{1})) arg ON entity.PersonID = arg.Id

BeforeExecute
-- Informix.DB2 Informix

SELECT
	arg.Id,
	arg."Value"
FROM
	Person entity
		INNER JOIN (
			SELECT 1::Int AS Id, 2147483648::BigInt AS "Value" FROM table(set{1})) arg ON entity.PersonID = arg.Id

