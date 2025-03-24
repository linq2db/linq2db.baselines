﻿BeforeExecute
--  PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @doe Text(3) -- String
SET     @doe = 'Doe'

SELECT
	n.item
FROM
	"Person" p
		INNER JOIN LATERAL (VALUES
			(p."FirstName"), (p."LastName"), ('John'), (:doe)
		) n(item) ON 1=1

BeforeExecute
--  PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @doe Text(4) -- String
SET     @doe = 'Doe1'

SELECT
	n.item
FROM
	"Person" p
		INNER JOIN LATERAL (VALUES
			(p."FirstName"), (p."LastName"), ('John'), (:doe)
		) n(item) ON 1=1

