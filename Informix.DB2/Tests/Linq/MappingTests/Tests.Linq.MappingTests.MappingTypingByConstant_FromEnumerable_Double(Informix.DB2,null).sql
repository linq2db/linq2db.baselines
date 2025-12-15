-- Informix.DB2 Informix

SELECT
	arg.Id,
	arg."Value"
FROM
	Person entity
		INNER JOIN (
			SELECT 1::Int AS Id, NULL::Float AS "Value" FROM table(set{1})) arg ON entity.PersonID = arg.Id

-- Informix.DB2 Informix

SELECT
	arg.Id,
	arg."Value"
FROM
	Person entity
		INNER JOIN (
			SELECT 1::Int AS Id, 3147483648::Float AS "Value" FROM table(set{1})) arg ON entity.PersonID = arg.Id

