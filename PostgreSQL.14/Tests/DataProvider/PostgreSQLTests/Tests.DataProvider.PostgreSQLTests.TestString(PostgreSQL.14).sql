-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT Cast('12345' as char(20))

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT Cast(NULL    as char(20))

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT Cast('12345' as varchar(20))

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT Cast(NULL    as varchar(20))

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT Cast('12345' as text)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT Cast(NULL    as text)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Char(3) -- String
SET     @p = '123'

SELECT :p

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Varchar(3) -- String
SET     @p = '123'

SELECT :p

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Text(3) -- String
SET     @p = '123'

SELECT :p

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Char(3) -- String
SET     @p = '123'

SELECT :p

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Varchar(3) -- String
SET     @p = '123'

SELECT :p

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Text(3) -- String
SET     @p = '123'

SELECT :p

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Varchar(3) -- String
SET     @p = '123'

SELECT :p

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Varchar -- String
SET     @p = NULL

SELECT :p

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Text(1) -- String
SET     @p = '1'

SELECT :p

