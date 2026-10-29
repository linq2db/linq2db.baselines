-- Firebird.2.5 Firebird
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT FIRST @Count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT SKIP @Count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT FIRST @p SKIP @Count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT FIRST @count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT SKIP @count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT FIRST 1 SKIP @Count
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 0
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT SKIP 0
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 0
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 0
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 0
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @Count Integer -- Int32
SET     @Count = 2

SELECT FIRST @Count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @Count Integer -- Int32
SET     @Count = 2

SELECT SKIP @Count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 3
DECLARE @Count Integer -- Int32
SET     @Count = 2

SELECT FIRST @p SKIP @Count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @count Integer -- Int32
SET     @count = 2

SELECT FIRST @count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @count Integer -- Int32
SET     @count = 2

SELECT SKIP @count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @Count Integer -- Int32
SET     @Count = 2

SELECT FIRST 1 SKIP @Count
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT SKIP 2
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 3 SKIP 2
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 2
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 2
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT FIRST @Count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT SKIP @Count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT FIRST @p SKIP @Count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT FIRST @count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT SKIP @count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT FIRST 1 SKIP @Count
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 0
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT SKIP 0
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 0
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 0
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 0
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @Count Integer -- Int32
SET     @Count = 1

SELECT FIRST @Count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @Count Integer -- Int32
SET     @Count = 1

SELECT SKIP @Count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 2
DECLARE @Count Integer -- Int32
SET     @Count = 1

SELECT FIRST @p SKIP @Count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @count Integer -- Int32
SET     @count = 1

SELECT FIRST @count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @count Integer -- Int32
SET     @count = 1

SELECT SKIP @count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @Count Integer -- Int32
SET     @Count = 1

SELECT FIRST 1 SKIP @Count
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT SKIP 1
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 2 SKIP 1
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 1
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 1
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @Count Integer -- Int32
SET     @Count = 3

SELECT FIRST @Count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @Count Integer -- Int32
SET     @Count = 3

SELECT SKIP @Count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 4
DECLARE @Count Integer -- Int32
SET     @Count = 3

SELECT FIRST @p SKIP @Count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @count Integer -- Int32
SET     @count = 3

SELECT FIRST @count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @count Integer -- Int32
SET     @count = 3

SELECT SKIP @count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @Count Integer -- Int32
SET     @Count = 3

SELECT FIRST 1 SKIP @Count
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 3
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT SKIP 3
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 4 SKIP 3
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 3
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 3
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT FIRST @Count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT SKIP @Count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT FIRST @p SKIP @Count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT FIRST @count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT SKIP @count
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT FIRST 1 SKIP @Count
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 0
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT SKIP 0
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 0
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 0
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 0
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

