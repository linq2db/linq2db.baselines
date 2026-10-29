-- Firebird.5 Firebird4
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
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
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
FETCH NEXT 1 ROWS ONLY

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
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 

-- Firebird.5 Firebird4
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
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
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
FETCH NEXT 1 ROWS ONLY

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
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @p ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @p ROWS

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 0
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @p ROWS FETCH NEXT @p_1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 0

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
OFFSET @p ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @p ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @p ROWS

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 2
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 3

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @p ROWS FETCH NEXT @p_1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 2

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
OFFSET @p ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @p ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @p ROWS

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 0
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @p ROWS FETCH NEXT @p_1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 0

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
OFFSET @p ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @p ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @p ROWS

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @p ROWS FETCH NEXT @p_1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 1

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
OFFSET @p ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 3

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @p ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 3

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @p ROWS

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 3
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 4

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @p ROWS FETCH NEXT @p_1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 3

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
OFFSET @p ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @p ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @p ROWS

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 0
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @p ROWS FETCH NEXT @p_1 ROWS ONLY 

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 0

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
OFFSET @p ROWS FETCH NEXT 1 ROWS ONLY 

