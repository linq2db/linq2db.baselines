-- Oracle.19.Managed Oracle.Managed Oracle12
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
FETCH NEXT 1 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
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
FETCH NEXT 1 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :take ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 

-- Oracle.19.Managed Oracle.Managed Oracle12
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
FETCH NEXT 1 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
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
FETCH NEXT 1 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :take ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :p ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :p ROWS

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 0
DECLARE @p_1 Int32
SET     @p_1 = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :p ROWS FETCH NEXT :p_1 ROWS ONLY 

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 0

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
OFFSET :p ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :p ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :p ROWS

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 2
DECLARE @p_1 Int32
SET     @p_1 = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :p ROWS FETCH NEXT :p_1 ROWS ONLY 

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 2

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
OFFSET :p ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :p ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :p ROWS

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 0
DECLARE @p_1 Int32
SET     @p_1 = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :p ROWS FETCH NEXT :p_1 ROWS ONLY 

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 0

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
OFFSET :p ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :p ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :p ROWS

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1
DECLARE @p_1 Int32
SET     @p_1 = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :p ROWS FETCH NEXT :p_1 ROWS ONLY 

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

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
OFFSET :p ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :p ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :p ROWS

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 3
DECLARE @p_1 Int32
SET     @p_1 = 4

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :p ROWS FETCH NEXT :p_1 ROWS ONLY 

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 3

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
OFFSET :p ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :p ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :p ROWS

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 0
DECLARE @p_1 Int32
SET     @p_1 = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :p ROWS FETCH NEXT :p_1 ROWS ONLY 

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 0

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
OFFSET :p ROWS FETCH NEXT 1 ROWS ONLY 

