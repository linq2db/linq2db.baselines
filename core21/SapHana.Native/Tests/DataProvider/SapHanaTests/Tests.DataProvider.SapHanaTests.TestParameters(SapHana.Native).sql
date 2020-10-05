BeforeExecute
-- SapHana.Native SapHana
DECLARE @p  -- Int32
SET     @p = 1

SELECT :p from dummy

BeforeExecute
-- SapHana.Native SapHana
DECLARE @p NVarChar(255) -- String
SET     @p = '1'

SELECT :p from dummy

BeforeExecute
-- SapHana.Native SapHana
DECLARE @p  -- Int32
SET     @p = 1

SELECT :p from dummy

BeforeExecute
-- SapHana.Native SapHana
DECLARE @p NVarChar(1) -- String
SET     @p = '1'

SELECT :p from dummy

BeforeExecute
-- SapHana.Native SapHana
DECLARE @p  -- Int32
SET     @p = 2
DECLARE @p2  -- Int32
SET     @p2 = 3

SELECT :p + :p2 from dummy

BeforeExecute
-- SapHana.Native SapHana
DECLARE @p2  -- Int32
SET     @p2 = 2
DECLARE @p  -- Int32
SET     @p = 3

SELECT :p2 + :p from dummy

