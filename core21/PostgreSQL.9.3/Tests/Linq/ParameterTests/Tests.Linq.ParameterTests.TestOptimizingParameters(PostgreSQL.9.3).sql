﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 1
DECLARE @id_2 Integer -- Int32
SET     @id_2 = 1

SELECT
	Count(*)
FROM
	"Person" t1
WHERE
	((t1."PersonID" = :id OR t1."PersonID" <= :id_1) OR t1."PersonID" = :id_2)

