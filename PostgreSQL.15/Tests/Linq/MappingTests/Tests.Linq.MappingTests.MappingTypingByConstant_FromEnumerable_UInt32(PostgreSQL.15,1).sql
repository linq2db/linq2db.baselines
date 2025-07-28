BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Value Bigint -- Int64
SET     @Value = 1::bigint

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,:Value)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Value Bigint -- Int64
SET     @Value = 2147483648::bigint

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (VALUES
			(1,:Value)
		) arg("Id", "Value") ON entity."PersonID" = arg."Id"

