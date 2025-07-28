BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Numeric -- Decimal
SET     @Value = NULL

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,:Value)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Numeric(10, 0) -- Decimal
SET     @Value = 2147483648::decimal(10)

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,:Value)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

