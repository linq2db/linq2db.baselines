-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT Cast(@p as int) FROM "Dual"

-- Firebird.2.5 Firebird
DECLARE @p VarChar(255) -- String
SET     @p = '1'

SELECT Cast(@p as char(1)) FROM "Dual"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT Cast(@p as int) FROM "Dual"

-- Firebird.2.5 Firebird
DECLARE @p1 VarChar(1) -- String
SET     @p1 = '1'

SELECT Cast(@p1 as char(1)) FROM "Dual"

-- Firebird.2.5 Firebird
DECLARE @p1 Integer -- Int32
SET     @p1 = 2
DECLARE @p2 Integer -- Int32
SET     @p2 = 3

SELECT Cast(@p1 as int) + Cast(@p2 as int) FROM "Dual"

-- Firebird.2.5 Firebird
DECLARE @p2 Integer -- Int32
SET     @p2 = 2
DECLARE @p1 Integer -- Int32
SET     @p1 = 3

SELECT Cast(@p2 as int) + Cast(@p1 as int) FROM "Dual"

