﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT 
	(NOT EXISTS(
		SELECT 
			*
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" <= :n
	))

