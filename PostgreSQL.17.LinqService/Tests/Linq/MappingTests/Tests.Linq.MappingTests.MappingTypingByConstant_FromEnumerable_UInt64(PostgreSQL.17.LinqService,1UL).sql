BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Value Numeric(1, 0) -- Decimal
SET     @Value = 1

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,:Value)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Value Numeric(10, 0) -- Decimal
SET     @Value = 2147483648

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,:Value)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

