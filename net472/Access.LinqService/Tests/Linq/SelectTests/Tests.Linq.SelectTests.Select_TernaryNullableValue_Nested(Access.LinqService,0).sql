BeforeExecute
-- Access AccessOleDb
DECLARE @Value_2 Integer -- Int32
SET     @Value_2 = 0
DECLARE @Value_3 Integer -- Int32
SET     @Value_3 = 0

SELECT 
	Iif(@Value_2 < 2, @Value_3, 2)

