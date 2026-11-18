-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p Int32
SET     @p = 1

SELECT @p

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p VarChar(1) -- String
SET     @p = '1'

SELECT @p

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p Int32
SET     @p = 1

SELECT @p

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p1 VarChar(1) -- String
SET     @p1 = '1'

SELECT @p1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p1 Int32
SET     @p1 = 2
DECLARE @p2 Int32
SET     @p2 = 3

SELECT @p1 + ?p2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p2 Int32
SET     @p2 = 2
DECLARE @p1 Int32
SET     @p1 = 3

SELECT @p2 + ?p1

