-- PostgreSQL.12 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :Count

-- PostgreSQL.12 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count 

-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :count

-- PostgreSQL.12 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :count 

-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :take

-- PostgreSQL.12 PostgreSQL12
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :take OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @skip Integer -- Int32
SET     @skip = 0

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
LIMIT 1 OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @skip Integer -- Int32
SET     @skip = 0

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
LIMIT 1 OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :Count

-- PostgreSQL.12 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count 

-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :count

-- PostgreSQL.12 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :count 

-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :take

-- PostgreSQL.12 PostgreSQL12
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :take OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @skip Integer -- Int32
SET     @skip = 2

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
LIMIT 1 OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @skip Integer -- Int32
SET     @skip = 2

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
LIMIT 1 OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :Count

-- PostgreSQL.12 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count 

-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :count

-- PostgreSQL.12 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :count 

-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :take

-- PostgreSQL.12 PostgreSQL12
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :take OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @skip Integer -- Int32
SET     @skip = 0

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
LIMIT 1 OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @skip Integer -- Int32
SET     @skip = 0

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
LIMIT 1 OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :Count

-- PostgreSQL.12 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count 

-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :count

-- PostgreSQL.12 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :count 

-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :take

-- PostgreSQL.12 PostgreSQL12
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :take OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @skip Integer -- Int32
SET     @skip = 1

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
LIMIT 1 OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @skip Integer -- Int32
SET     @skip = 1

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
LIMIT 1 OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :Count

-- PostgreSQL.12 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count 

-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :count

-- PostgreSQL.12 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :count 

-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :take

-- PostgreSQL.12 PostgreSQL12
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 4
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :take OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @skip Integer -- Int32
SET     @skip = 3

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
LIMIT 1 OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @skip Integer -- Int32
SET     @skip = 3

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
LIMIT 1 OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :Count

-- PostgreSQL.12 PostgreSQL12
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count 

-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :count

-- PostgreSQL.12 PostgreSQL12
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :count 

-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :take

-- PostgreSQL.12 PostgreSQL12
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
LIMIT :take OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @skip Integer -- Int32
SET     @skip = 0

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
LIMIT 1 OFFSET :skip 

-- PostgreSQL.12 PostgreSQL12
DECLARE @skip Integer -- Int32
SET     @skip = 0

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
LIMIT 1 OFFSET :skip 

