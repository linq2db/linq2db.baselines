-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p Int32
SET     @p = 1

SELECT @p

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p VarChar(4000) -- String
SET     @p = '1'

SELECT @p

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p Int32
SET     @p = 1

SELECT @p

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p1 VarChar(1) -- String
SET     @p1 = '1'

SELECT @p1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p1 Int32
SET     @p1 = 2
DECLARE @p2 Int32
SET     @p2 = 3

SELECT @p1 + ?p2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p2 Int32
SET     @p2 = 2
DECLARE @p1 Int32
SET     @p1 = 3

SELECT @p2 + ?p1

