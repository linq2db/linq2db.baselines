-- DuckDB

SELECT
	arg.Id,
	arg."Value"
FROM
	Person entity
		INNER JOIN (VALUES
			(1,'0'::FLOAT)
		) arg(Id, "Value") ON entity.PersonID = arg.Id

-- DuckDB

SELECT
	arg.Id,
	arg."Value"
FROM
	Person entity
		INNER JOIN (VALUES
			(1,'3.14748365E+09'::FLOAT)
		) arg(Id, "Value") ON entity.PersonID = arg.Id

