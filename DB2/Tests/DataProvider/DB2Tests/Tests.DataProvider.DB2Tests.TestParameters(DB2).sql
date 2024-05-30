BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT Cast(@p  as int)  FROM SYSIBM.SYSDUMMY1

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p VarChar(255) -- String
SET     @p = '1'

SELECT Cast(@p  as char) FROM SYSIBM.SYSDUMMY1

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT Cast(@p  as int)  FROM SYSIBM.SYSDUMMY1

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p1 VarChar(1) -- String
SET     @p1 = '1'

SELECT Cast(@p1 as char) FROM SYSIBM.SYSDUMMY1

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p1 Integer(4) -- Int32
SET     @p1 = 2
DECLARE @p2 Integer(4) -- Int32
SET     @p2 = 3

SELECT Cast(@p1 as int) + Cast(@p2 as int) FROM SYSIBM.SYSDUMMY1

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p2 Integer(4) -- Int32
SET     @p2 = 2
DECLARE @p1 Integer(4) -- Int32
SET     @p1 = 3

SELECT Cast(@p2 as int) + Cast(@p1 as int) FROM SYSIBM.SYSDUMMY1

