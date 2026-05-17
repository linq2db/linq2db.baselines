-- DuckDB

SELECT
	arg.Id,
	arg."Value"
FROM
	Person entity
		INNER JOIN (VALUES
			(1,1)
		) arg(Id, "Value") ON entity.PersonID = arg.Id

-- DuckDB

SELECT
	arg.Id,
	arg."Value"
FROM
	Person entity
		INNER JOIN (VALUES
			(1,2147483648.123)
		) arg(Id, "Value") ON entity.PersonID = arg.Id

