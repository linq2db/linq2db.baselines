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
DECLARE @take Integer -- Int32
SET     @take = 0

SELECT FIRST @take
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT SKIP @skip
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST 1 SKIP @skip
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
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST 1 SKIP @skip
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
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT SKIP @skip
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT FIRST @take SKIP @skip
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT FIRST 1 SKIP @skip
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
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT FIRST 1 SKIP @skip
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
DECLARE @take Integer -- Int32
SET     @take = 0

SELECT FIRST @take
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT SKIP @skip
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST 1 SKIP @skip
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
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST 1 SKIP @skip
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
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT SKIP @skip
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT FIRST @take SKIP @skip
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT FIRST 1 SKIP @skip
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
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT FIRST 1 SKIP @skip
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
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT FIRST @take
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT SKIP @skip
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 4
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT FIRST @take SKIP @skip
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT FIRST 1 SKIP @skip
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
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT FIRST 1 SKIP @skip
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
DECLARE @take Integer -- Int32
SET     @take = 0

SELECT FIRST @take
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT SKIP @skip
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST 1 SKIP @skip
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
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST 1 SKIP @skip
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

