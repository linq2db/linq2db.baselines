﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @p Text(1) -- String
SET     @p = '1'

SELECT :p

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT :p

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @p1 Text(1) -- String
SET     @p1 = '1'

SELECT :p1

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @p1 Integer -- Int32
SET     @p1 = 2
DECLARE @p2 Integer -- Int32
SET     @p2 = 3

SELECT :p1 + :p2

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @p2 Integer -- Int32
SET     @p2 = 2
DECLARE @p1 Integer -- Int32
SET     @p1 = 3

SELECT :p2 + :p1

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT :p

