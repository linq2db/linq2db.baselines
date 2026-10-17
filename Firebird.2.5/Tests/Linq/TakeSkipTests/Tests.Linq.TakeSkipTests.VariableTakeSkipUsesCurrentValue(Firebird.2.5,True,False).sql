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
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT FIRST @n
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT FIRST @take SKIP @skip
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT SKIP @n
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
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT FIRST 1 SKIP @n
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
SET     @take = 1

SELECT FIRST @take
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

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
DECLARE @n Integer -- Int32
SET     @n = 2

SELECT FIRST @n
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT FIRST @take SKIP @skip
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @n Integer -- Int32
SET     @n = 2

SELECT SKIP @n
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
DECLARE @n Integer -- Int32
SET     @n = 2

SELECT FIRST 1 SKIP @n
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
SET     @take = 2

SELECT FIRST @take
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

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
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT FIRST @n
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT FIRST @take SKIP @skip
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT SKIP @n
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
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT FIRST 1 SKIP @n
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
DECLARE @skip Integer -- Int32
SET     @skip = 4

SELECT SKIP @skip
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT FIRST @take
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

