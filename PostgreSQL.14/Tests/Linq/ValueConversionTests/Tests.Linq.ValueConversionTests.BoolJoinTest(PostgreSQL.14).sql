﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @true_value Varchar -- String
SET     @true_value = 'Y'
DECLARE @true_value_1 Varchar -- String
SET     @true_value_1 = 'Y'

SELECT
	t1."Enum"
FROM
	"ValueConversion" t1
		INNER JOIN (
			SELECT
				*
			FROM
				"ValueConversion" t2
			WHERE
				t2."BoolValue" = :true_value
		) t2_1 ON t1."BoolValue" = :true_value_1

