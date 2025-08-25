BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	arg.Id,
	arg."Value"
FROM
	Person entity
		INNER JOIN (
			SELECT 1::Int AS Id, NULL::Real AS "Value" FROM table(set{1})) arg ON entity.PersonID = arg.Id

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	arg.Id,
	arg."Value"
FROM
	Person entity
		INNER JOIN (
			SELECT 1::Int AS Id, 3.14748365E+09::Real AS "Value" FROM table(set{1})) arg ON entity.PersonID = arg.Id

