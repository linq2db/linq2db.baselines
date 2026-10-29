-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @take ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @n ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 1
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @n ROWS

-- Firebird.5 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET @skip ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET @n ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET @skip ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @skip ROWS

-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @take ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @take ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @n Integer -- Int32
SET     @n = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @n ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 2
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @n Integer -- Int32
SET     @n = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @n ROWS

-- Firebird.5 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET @skip ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @n Integer -- Int32
SET     @n = 2

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET @n ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET @skip ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @skip ROWS

-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @take ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @take ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @n ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 3
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @n ROWS

-- Firebird.5 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET @skip ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET @n ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET @skip ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 4

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @skip ROWS

-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @take ROWS ONLY

