-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :Count ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count ROWS

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
SET     @Count = 0
DECLARE @p Int32
SET     @p = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count ROWS FETCH NEXT :p ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @count Int32
SET     @count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :count ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @count Int32
SET     @count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :count ROWS

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
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
OFFSET :Count ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :take ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :skip ROWS

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
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
OFFSET :skip ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
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
OFFSET :skip ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
SET     @Count = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :Count ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
SET     @Count = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count ROWS

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
SET     @Count = 2
DECLARE @p Int32
SET     @p = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count ROWS FETCH NEXT :p ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @count Int32
SET     @count = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :count ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @count Int32
SET     @count = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :count ROWS

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
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
OFFSET :Count ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :take ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :skip ROWS

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 2
DECLARE @take Int32
SET     @take = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
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
OFFSET :skip ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
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
OFFSET :skip ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :Count ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count ROWS

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
SET     @Count = 0
DECLARE @p Int32
SET     @p = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count ROWS FETCH NEXT :p ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @count Int32
SET     @count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :count ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @count Int32
SET     @count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :count ROWS

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
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
OFFSET :Count ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :take ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :skip ROWS

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
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
OFFSET :skip ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
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
OFFSET :skip ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
SET     @Count = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :Count ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
SET     @Count = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count ROWS

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
SET     @Count = 1
DECLARE @p Int32
SET     @p = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count ROWS FETCH NEXT :p ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @count Int32
SET     @count = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :count ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @count Int32
SET     @count = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :count ROWS

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
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
OFFSET :Count ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :take ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :skip ROWS

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
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
OFFSET :skip ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
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
OFFSET :skip ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
SET     @Count = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :Count ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
SET     @Count = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count ROWS

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
SET     @Count = 3
DECLARE @p Int32
SET     @p = 4

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count ROWS FETCH NEXT :p ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @count Int32
SET     @count = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :count ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @count Int32
SET     @count = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :count ROWS

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
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
OFFSET :Count ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :take ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 3

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :skip ROWS

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 3
DECLARE @take Int32
SET     @take = 4

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
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
OFFSET :skip ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
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
OFFSET :skip ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :Count ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
SET     @Count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count ROWS

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
SET     @Count = 0
DECLARE @p Int32
SET     @p = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :Count ROWS FETCH NEXT :p ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @count Int32
SET     @count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :count ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @count Int32
SET     @count = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :count ROWS

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Count Int32
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
OFFSET :Count ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
FETCH NEXT :take ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :skip ROWS

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 1

SELECT
	p."PersonID"
FROM
	"Person" p
ORDER BY
	p."PersonID"
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
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
OFFSET :skip ROWS FETCH NEXT 1 ROWS ONLY 

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
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
OFFSET :skip ROWS FETCH NEXT 1 ROWS ONLY 

