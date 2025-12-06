-- Firebird.3 Firebird3

SELECT Cast('12345' as char(5)) FROM "Dual"

-- Firebird.3 Firebird3

SELECT Cast('12345' as char(20)) FROM "Dual"

-- Firebird.3 Firebird3

SELECT Cast('12345 ' as char(20)) FROM "Dual"

-- Firebird.3 Firebird3

SELECT Cast(NULL    as char(20)) FROM "Dual"

-- Firebird.3 Firebird3

SELECT Cast('12345' as varchar(5)) FROM "Dual"

-- Firebird.3 Firebird3

SELECT Cast('12345' as varchar(20)) FROM "Dual"

-- Firebird.3 Firebird3

SELECT Cast(NULL    as varchar(20)) FROM "Dual"

-- Firebird.3 Firebird3
DECLARE @p Char(3) -- String
SET     @p = '123'

SELECT Cast(@p as varchar(3)) FROM "Dual"

-- Firebird.3 Firebird3
DECLARE @p VarChar(3) -- String
SET     @p = '123'

SELECT Cast(@p as varchar(3)) FROM "Dual"

-- Firebird.3 Firebird3
DECLARE @p VarChar(3) -- String
SET     @p = '123'

SELECT Cast(@p as varchar(3)) FROM "Dual"

-- Firebird.3 Firebird3
DECLARE @p Char(3) -- String
SET     @p = '123'

SELECT Cast(@p as varchar(3)) FROM "Dual"

-- Firebird.3 Firebird3
DECLARE @p VarChar(3) -- String
SET     @p = '123'

SELECT Cast(@p as varchar(3)) FROM "Dual"

-- Firebird.3 Firebird3
DECLARE @p VarChar(3) -- String
SET     @p = '123'

SELECT Cast(@p as varchar(3)) FROM "Dual"

-- Firebird.3 Firebird3
DECLARE @p VarChar(3) -- String
SET     @p = '123'

SELECT Cast(@p as varchar(3)) FROM "Dual"

-- Firebird.3 Firebird3
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT Cast(@p as varchar(3)) FROM "Dual"

-- Firebird.3 Firebird3
DECLARE @p VarChar(1) -- String
SET     @p = '1'

SELECT Cast(@p as varchar(3)) FROM "Dual"

