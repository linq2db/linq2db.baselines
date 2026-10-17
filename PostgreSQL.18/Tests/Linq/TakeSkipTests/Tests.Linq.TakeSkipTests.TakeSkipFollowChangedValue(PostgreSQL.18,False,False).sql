-- PostgreSQL.18 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :Count

-- PostgreSQL.18 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count 

-- PostgreSQL.18 PostgreSQL12
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :p OFFSET :Count 

-- PostgreSQL.18 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :count

-- PostgreSQL.18 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :count 

-- PostgreSQL.18 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"
LIMIT 1 OFFSET :Count 

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT 0

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET 0 

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT 1 OFFSET 0 

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"
LIMIT 1 OFFSET 0 

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"
LIMIT 1 OFFSET 0 

-- PostgreSQL.18 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :Count

-- PostgreSQL.18 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count 

-- PostgreSQL.18 PostgreSQL12
DECLARE @p Integer -- Int32
SET     @p = 3
DECLARE @Count Integer -- Int32
SET     @Count = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :p OFFSET :Count 

-- PostgreSQL.18 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :count

-- PostgreSQL.18 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :count 

-- PostgreSQL.18 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 2

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"
LIMIT 1 OFFSET :Count 

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT 2

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET 2 

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT 3 OFFSET 2 

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"
LIMIT 1 OFFSET 2 

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"
LIMIT 1 OFFSET 2 

-- PostgreSQL.18 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :Count

-- PostgreSQL.18 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count 

-- PostgreSQL.18 PostgreSQL12
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :p OFFSET :Count 

-- PostgreSQL.18 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :count

-- PostgreSQL.18 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :count 

-- PostgreSQL.18 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"
LIMIT 1 OFFSET :Count 

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT 0

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET 0 

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT 1 OFFSET 0 

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"
LIMIT 1 OFFSET 0 

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"
LIMIT 1 OFFSET 0 

-- PostgreSQL.18 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :Count

-- PostgreSQL.18 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count 

-- PostgreSQL.18 PostgreSQL12
DECLARE @p Integer -- Int32
SET     @p = 2
DECLARE @Count Integer -- Int32
SET     @Count = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :p OFFSET :Count 

-- PostgreSQL.18 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :count

-- PostgreSQL.18 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :count 

-- PostgreSQL.18 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 1

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"
LIMIT 1 OFFSET :Count 

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT 1

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET 1 

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT 2 OFFSET 1 

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"
LIMIT 1 OFFSET 1 

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"
LIMIT 1 OFFSET 1 

-- PostgreSQL.18 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :Count

-- PostgreSQL.18 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count 

-- PostgreSQL.18 PostgreSQL12
DECLARE @p Integer -- Int32
SET     @p = 4
DECLARE @Count Integer -- Int32
SET     @Count = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :p OFFSET :Count 

-- PostgreSQL.18 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :count

-- PostgreSQL.18 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :count 

-- PostgreSQL.18 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 3

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"
LIMIT 1 OFFSET :Count 

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT 3

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET 3 

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT 4 OFFSET 3 

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"
LIMIT 1 OFFSET 3 

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"
LIMIT 1 OFFSET 3 

-- PostgreSQL.18 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :Count

-- PostgreSQL.18 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count 

-- PostgreSQL.18 PostgreSQL12
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :p OFFSET :Count 

-- PostgreSQL.18 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :count

-- PostgreSQL.18 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :count 

-- PostgreSQL.18 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"
LIMIT 1 OFFSET :Count 

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT 0

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET 0 

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT 1 OFFSET 0 

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"
LIMIT 1 OFFSET 0 

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."PersonID"
LIMIT 1 OFFSET 0 

