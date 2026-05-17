-- Informix.DB2 Informix

DELETE FROM
	TestMerge1

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Integer -- Int32
SET     @Field4 = NULL

INSERT INTO TestMerge1
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Field1 Integer(4) -- Int32
SET     @Field1 = 2
DECLARE @Field2 Integer -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Integer -- Int32
SET     @Field4 = NULL

INSERT INTO TestMerge1
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer(4) -- Int32
SET     @Field2 = 3
DECLARE @Field4 Integer(4) -- Int32
SET     @Field4 = 203

INSERT INTO TestMerge1
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @Field1 Integer(4) -- Int32
SET     @Field1 = 5
DECLARE @Field2 Integer(4) -- Int32
SET     @Field2 = 6
DECLARE @Field4 Integer -- Int32
SET     @Field4 = NULL

INSERT INTO TestMerge1
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Informix.DB2 Informix

DELETE FROM
	TestMerge2

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer(4) -- Int32
SET     @Field2 = 3
DECLARE @Field4 Integer -- Int32
SET     @Field4 = NULL

INSERT INTO TestMerge2
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @Field1 Integer(4) -- Int32
SET     @Field1 = 5
DECLARE @Field2 Integer(4) -- Int32
SET     @Field2 = 7
DECLARE @Field4 Integer(4) -- Int32
SET     @Field4 = 214

INSERT INTO TestMerge2
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @Field1 Integer(4) -- Int32
SET     @Field1 = 10
DECLARE @Field2 Integer(4) -- Int32
SET     @Field2 = 4
DECLARE @Field4 Integer -- Int32
SET     @Field4 = NULL

INSERT INTO TestMerge2
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @Field1 Integer -- Int32
SET     @Field1 = NULL
DECLARE @Field2 Integer -- Int32
SET     @Field2 = NULL
DECLARE @Field4 Integer(4) -- Int32
SET     @Field4 = 216

INSERT INTO TestMerge2
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	@Id,
	@Field1,
	@Field2,
	@Field4
)

-- Informix.DB2 Informix

MERGE INTO TestMerge1 Target
USING (
	SELECT 5::Int AS Id, 6::Int AS Field1, 7::Int AS Field2, 9::Int AS Field4 FROM table(set{1})
	UNION ALL
	SELECT 6::Int, 7::Int, 8::Int, 10::Int FROM table(set{1})
	UNION ALL
	SELECT 7::Int, 8::Int, 9::Int, 11::Int FROM table(set{1})
	UNION ALL
	SELECT 8::Int, 9::Int, 10::Int, 12::Int FROM table(set{1})
	UNION ALL
	SELECT 9::Int, 10::Int, 11::Int, 13::Int FROM table(set{1})
	UNION ALL
	SELECT 10::Int, 11::Int, 12::Int, 14::Int FROM table(set{1})
	UNION ALL
	SELECT 11::Int, 12::Int, 13::Int, 15::Int FROM table(set{1})
	UNION ALL
	SELECT 12::Int, 13::Int, 14::Int, 16::Int FROM table(set{1})
	UNION ALL
	SELECT 13::Int, 14::Int, 15::Int, 17::Int FROM table(set{1})
	UNION ALL
	SELECT 14::Int, 15::Int, 16::Int, 18::Int FROM table(set{1})
	UNION ALL
	SELECT 15::Int, 16::Int, 17::Int, 19::Int FROM table(set{1})
	UNION ALL
	SELECT 16::Int, 17::Int, 18::Int, 20::Int FROM table(set{1})
	UNION ALL
	SELECT 17::Int, 18::Int, 19::Int, 21::Int FROM table(set{1})
	UNION ALL
	SELECT 18::Int, 19::Int, 20::Int, 22::Int FROM table(set{1})
	UNION ALL
	SELECT 19::Int, 20::Int, 21::Int, 23::Int FROM table(set{1})
	UNION ALL
	SELECT 20::Int, 21::Int, 22::Int, 24::Int FROM table(set{1})
	UNION ALL
	SELECT 21::Int, 22::Int, 23::Int, 25::Int FROM table(set{1})
	UNION ALL
	SELECT 22::Int, 23::Int, 24::Int, 26::Int FROM table(set{1})
	UNION ALL
	SELECT 23::Int, 24::Int, 25::Int, 27::Int FROM table(set{1})
	UNION ALL
	SELECT 24::Int, 25::Int, 26::Int, 28::Int FROM table(set{1})
	UNION ALL
	SELECT 25::Int, 26::Int, 27::Int, 29::Int FROM table(set{1})
	UNION ALL
	SELECT 26::Int, 27::Int, 28::Int, 30::Int FROM table(set{1})
	UNION ALL
	SELECT 27::Int, 28::Int, 29::Int, 31::Int FROM table(set{1})
	UNION ALL
	SELECT 28::Int, 29::Int, 30::Int, 32::Int FROM table(set{1})
	UNION ALL
	SELECT 29::Int, 30::Int, 31::Int, 33::Int FROM table(set{1})
	UNION ALL
	SELECT 30::Int, 31::Int, 32::Int, 34::Int FROM table(set{1})
	UNION ALL
	SELECT 31::Int, 32::Int, 33::Int, 35::Int FROM table(set{1})
	UNION ALL
	SELECT 32::Int, 33::Int, 34::Int, 36::Int FROM table(set{1})
	UNION ALL
	SELECT 33::Int, 34::Int, 35::Int, 37::Int FROM table(set{1})
	UNION ALL
	SELECT 34::Int, 35::Int, 36::Int, 38::Int FROM table(set{1})
	UNION ALL
	SELECT 35::Int, 36::Int, 37::Int, 39::Int FROM table(set{1})
	UNION ALL
	SELECT 36::Int, 37::Int, 38::Int, 40::Int FROM table(set{1})
	UNION ALL
	SELECT 37::Int, 38::Int, 39::Int, 41::Int FROM table(set{1})
	UNION ALL
	SELECT 38::Int, 39::Int, 40::Int, 42::Int FROM table(set{1})
	UNION ALL
	SELECT 39::Int, 40::Int, 41::Int, 43::Int FROM table(set{1})
	UNION ALL
	SELECT 40::Int, 41::Int, 42::Int, 44::Int FROM table(set{1})
	UNION ALL
	SELECT 41::Int, 42::Int, 43::Int, 45::Int FROM table(set{1})
	UNION ALL
	SELECT 42::Int, 43::Int, 44::Int, 46::Int FROM table(set{1})
	UNION ALL
	SELECT 43::Int, 44::Int, 45::Int, 47::Int FROM table(set{1})
	UNION ALL
	SELECT 44::Int, 45::Int, 46::Int, 48::Int FROM table(set{1})
	UNION ALL
	SELECT 45::Int, 46::Int, 47::Int, 49::Int FROM table(set{1})
	UNION ALL
	SELECT 46::Int, 47::Int, 48::Int, 50::Int FROM table(set{1})
	UNION ALL
	SELECT 47::Int, 48::Int, 49::Int, 51::Int FROM table(set{1})
	UNION ALL
	SELECT 48::Int, 49::Int, 50::Int, 52::Int FROM table(set{1})
	UNION ALL
	SELECT 49::Int, 50::Int, 51::Int, 53::Int FROM table(set{1})
	UNION ALL
	SELECT 50::Int, 51::Int, 52::Int, 54::Int FROM table(set{1})
	UNION ALL
	SELECT 51::Int, 52::Int, 53::Int, 55::Int FROM table(set{1})
	UNION ALL
	SELECT 52::Int, 53::Int, 54::Int, 56::Int FROM table(set{1})
	UNION ALL
	SELECT 53::Int, 54::Int, 55::Int, 57::Int FROM table(set{1})
	UNION ALL
	SELECT 54::Int, 55::Int, 56::Int, 58::Int FROM table(set{1})
	UNION ALL
	SELECT 55::Int, 56::Int, 57::Int, 59::Int FROM table(set{1})
	UNION ALL
	SELECT 56::Int, 57::Int, 58::Int, 60::Int FROM table(set{1})
	UNION ALL
	SELECT 57::Int, 58::Int, 59::Int, 61::Int FROM table(set{1})
	UNION ALL
	SELECT 58::Int, 59::Int, 60::Int, 62::Int FROM table(set{1})
	UNION ALL
	SELECT 59::Int, 60::Int, 61::Int, 63::Int FROM table(set{1})
	UNION ALL
	SELECT 60::Int, 61::Int, 62::Int, 64::Int FROM table(set{1})
	UNION ALL
	SELECT 61::Int, 62::Int, 63::Int, 65::Int FROM table(set{1})
	UNION ALL
	SELECT 62::Int, 63::Int, 64::Int, 66::Int FROM table(set{1})
	UNION ALL
	SELECT 63::Int, 64::Int, 65::Int, 67::Int FROM table(set{1})
	UNION ALL
	SELECT 64::Int, 65::Int, 66::Int, 68::Int FROM table(set{1})
	UNION ALL
	SELECT 65::Int, 66::Int, 67::Int, 69::Int FROM table(set{1})
	UNION ALL
	SELECT 66::Int, 67::Int, 68::Int, 70::Int FROM table(set{1})
	UNION ALL
	SELECT 67::Int, 68::Int, 69::Int, 71::Int FROM table(set{1})
	UNION ALL
	SELECT 68::Int, 69::Int, 70::Int, 72::Int FROM table(set{1})
	UNION ALL
	SELECT 69::Int, 70::Int, 71::Int, 73::Int FROM table(set{1})
	UNION ALL
	SELECT 70::Int, 71::Int, 72::Int, 74::Int FROM table(set{1})
	UNION ALL
	SELECT 71::Int, 72::Int, 73::Int, 75::Int FROM table(set{1})
	UNION ALL
	SELECT 72::Int, 73::Int, 74::Int, 76::Int FROM table(set{1})
	UNION ALL
	SELECT 73::Int, 74::Int, 75::Int, 77::Int FROM table(set{1})
	UNION ALL
	SELECT 74::Int, 75::Int, 76::Int, 78::Int FROM table(set{1})
	UNION ALL
	SELECT 75::Int, 76::Int, 77::Int, 79::Int FROM table(set{1})
	UNION ALL
	SELECT 76::Int, 77::Int, 78::Int, 80::Int FROM table(set{1})
	UNION ALL
	SELECT 77::Int, 78::Int, 79::Int, 81::Int FROM table(set{1})
	UNION ALL
	SELECT 78::Int, 79::Int, 80::Int, 82::Int FROM table(set{1})
	UNION ALL
	SELECT 79::Int, 80::Int, 81::Int, 83::Int FROM table(set{1})
	UNION ALL
	SELECT 80::Int, 81::Int, 82::Int, 84::Int FROM table(set{1})
	UNION ALL
	SELECT 81::Int, 82::Int, 83::Int, 85::Int FROM table(set{1})
	UNION ALL
	SELECT 82::Int, 83::Int, 84::Int, 86::Int FROM table(set{1})
	UNION ALL
	SELECT 83::Int, 84::Int, 85::Int, 87::Int FROM table(set{1})
	UNION ALL
	SELECT 84::Int, 85::Int, 86::Int, 88::Int FROM table(set{1})
	UNION ALL
	SELECT 85::Int, 86::Int, 87::Int, 89::Int FROM table(set{1})
	UNION ALL
	SELECT 86::Int, 87::Int, 88::Int, 90::Int FROM table(set{1})
	UNION ALL
	SELECT 87::Int, 88::Int, 89::Int, 91::Int FROM table(set{1})
	UNION ALL
	SELECT 88::Int, 89::Int, 90::Int, 92::Int FROM table(set{1})
	UNION ALL
	SELECT 89::Int, 90::Int, 91::Int, 93::Int FROM table(set{1})
	UNION ALL
	SELECT 90::Int, 91::Int, 92::Int, 94::Int FROM table(set{1})
	UNION ALL
	SELECT 91::Int, 92::Int, 93::Int, 95::Int FROM table(set{1})
	UNION ALL
	SELECT 92::Int, 93::Int, 94::Int, 96::Int FROM table(set{1})
	UNION ALL
	SELECT 93::Int, 94::Int, 95::Int, 97::Int FROM table(set{1})
	UNION ALL
	SELECT 94::Int, 95::Int, 96::Int, 98::Int FROM table(set{1})
	UNION ALL
	SELECT 95::Int, 96::Int, 97::Int, 99::Int FROM table(set{1})
	UNION ALL
	SELECT 96::Int, 97::Int, 98::Int, 100::Int FROM table(set{1})
	UNION ALL
	SELECT 97::Int, 98::Int, 99::Int, 101::Int FROM table(set{1})
	UNION ALL
	SELECT 98::Int, 99::Int, 100::Int, 102::Int FROM table(set{1})
	UNION ALL
	SELECT 99::Int, 100::Int, 101::Int, 103::Int FROM table(set{1})
	UNION ALL
	SELECT 100::Int, 101::Int, 102::Int, 104::Int FROM table(set{1})
	UNION ALL
	SELECT 101::Int, 102::Int, 103::Int, 105::Int FROM table(set{1})
	UNION ALL
	SELECT 102::Int, 103::Int, 104::Int, 106::Int FROM table(set{1})
	UNION ALL
	SELECT 103::Int, 104::Int, 105::Int, 107::Int FROM table(set{1})
	UNION ALL
	SELECT 104::Int, 105::Int, 106::Int, 108::Int FROM table(set{1})
	UNION ALL
	SELECT 105::Int, 106::Int, 107::Int, 109::Int FROM table(set{1})
	UNION ALL
	SELECT 106::Int, 107::Int, 108::Int, 110::Int FROM table(set{1})
	UNION ALL
	SELECT 107::Int, 108::Int, 109::Int, 111::Int FROM table(set{1})
	UNION ALL
	SELECT 108::Int, 109::Int, 110::Int, 112::Int FROM table(set{1})
	UNION ALL
	SELECT 109::Int, 110::Int, 111::Int, 113::Int FROM table(set{1})
	UNION ALL
	SELECT 110::Int, 111::Int, 112::Int, 114::Int FROM table(set{1})
	UNION ALL
	SELECT 111::Int, 112::Int, 113::Int, 115::Int FROM table(set{1})
	UNION ALL
	SELECT 112::Int, 113::Int, 114::Int, 116::Int FROM table(set{1})
	UNION ALL
	SELECT 113::Int, 114::Int, 115::Int, 117::Int FROM table(set{1})
	UNION ALL
	SELECT 114::Int, 115::Int, 116::Int, 118::Int FROM table(set{1})
	UNION ALL
	SELECT 115::Int, 116::Int, 117::Int, 119::Int FROM table(set{1})
	UNION ALL
	SELECT 116::Int, 117::Int, 118::Int, 120::Int FROM table(set{1})
	UNION ALL
	SELECT 117::Int, 118::Int, 119::Int, 121::Int FROM table(set{1})
	UNION ALL
	SELECT 118::Int, 119::Int, 120::Int, 122::Int FROM table(set{1})
	UNION ALL
	SELECT 119::Int, 120::Int, 121::Int, 123::Int FROM table(set{1})
	UNION ALL
	SELECT 120::Int, 121::Int, 122::Int, 124::Int FROM table(set{1})
	UNION ALL
	SELECT 121::Int, 122::Int, 123::Int, 125::Int FROM table(set{1})
	UNION ALL
	SELECT 122::Int, 123::Int, 124::Int, 126::Int FROM table(set{1})
	UNION ALL
	SELECT 123::Int, 124::Int, 125::Int, 127::Int FROM table(set{1})
	UNION ALL
	SELECT 124::Int, 125::Int, 126::Int, 128::Int FROM table(set{1})
	UNION ALL
	SELECT 125::Int, 126::Int, 127::Int, 129::Int FROM table(set{1})
	UNION ALL
	SELECT 126::Int, 127::Int, 128::Int, 130::Int FROM table(set{1})
	UNION ALL
	SELECT 127::Int, 128::Int, 129::Int, 131::Int FROM table(set{1})
	UNION ALL
	SELECT 128::Int, 129::Int, 130::Int, 132::Int FROM table(set{1})
	UNION ALL
	SELECT 129::Int, 130::Int, 131::Int, 133::Int FROM table(set{1})
	UNION ALL
	SELECT 130::Int, 131::Int, 132::Int, 134::Int FROM table(set{1})
	UNION ALL
	SELECT 131::Int, 132::Int, 133::Int, 135::Int FROM table(set{1})
	UNION ALL
	SELECT 132::Int, 133::Int, 134::Int, 136::Int FROM table(set{1})
	UNION ALL
	SELECT 133::Int, 134::Int, 135::Int, 137::Int FROM table(set{1})
	UNION ALL
	SELECT 134::Int, 135::Int, 136::Int, 138::Int FROM table(set{1})
	UNION ALL
	SELECT 135::Int, 136::Int, 137::Int, 139::Int FROM table(set{1})
	UNION ALL
	SELECT 136::Int, 137::Int, 138::Int, 140::Int FROM table(set{1})
	UNION ALL
	SELECT 137::Int, 138::Int, 139::Int, 141::Int FROM table(set{1})
	UNION ALL
	SELECT 138::Int, 139::Int, 140::Int, 142::Int FROM table(set{1})
	UNION ALL
	SELECT 139::Int, 140::Int, 141::Int, 143::Int FROM table(set{1})
	UNION ALL
	SELECT 140::Int, 141::Int, 142::Int, 144::Int FROM table(set{1})
	UNION ALL
	SELECT 141::Int, 142::Int, 143::Int, 145::Int FROM table(set{1})
	UNION ALL
	SELECT 142::Int, 143::Int, 144::Int, 146::Int FROM table(set{1})
	UNION ALL
	SELECT 143::Int, 144::Int, 145::Int, 147::Int FROM table(set{1})
	UNION ALL
	SELECT 144::Int, 145::Int, 146::Int, 148::Int FROM table(set{1})
	UNION ALL
	SELECT 145::Int, 146::Int, 147::Int, 149::Int FROM table(set{1})
	UNION ALL
	SELECT 146::Int, 147::Int, 148::Int, 150::Int FROM table(set{1})
	UNION ALL
	SELECT 147::Int, 148::Int, 149::Int, 151::Int FROM table(set{1})
	UNION ALL
	SELECT 148::Int, 149::Int, 150::Int, 152::Int FROM table(set{1})
	UNION ALL
	SELECT 149::Int, 150::Int, 151::Int, 153::Int FROM table(set{1})
	UNION ALL
	SELECT 150::Int, 151::Int, 152::Int, 154::Int FROM table(set{1})
	UNION ALL
	SELECT 151::Int, 152::Int, 153::Int, 155::Int FROM table(set{1})
	UNION ALL
	SELECT 152::Int, 153::Int, 154::Int, 156::Int FROM table(set{1})
	UNION ALL
	SELECT 153::Int, 154::Int, 155::Int, 157::Int FROM table(set{1})
	UNION ALL
	SELECT 154::Int, 155::Int, 156::Int, 158::Int FROM table(set{1})
	UNION ALL
	SELECT 155::Int, 156::Int, 157::Int, 159::Int FROM table(set{1})
	UNION ALL
	SELECT 156::Int, 157::Int, 158::Int, 160::Int FROM table(set{1})
	UNION ALL
	SELECT 157::Int, 158::Int, 159::Int, 161::Int FROM table(set{1})
	UNION ALL
	SELECT 158::Int, 159::Int, 160::Int, 162::Int FROM table(set{1})
	UNION ALL
	SELECT 159::Int, 160::Int, 161::Int, 163::Int FROM table(set{1})
	UNION ALL
	SELECT 160::Int, 161::Int, 162::Int, 164::Int FROM table(set{1})
	UNION ALL
	SELECT 161::Int, 162::Int, 163::Int, 165::Int FROM table(set{1})
	UNION ALL
	SELECT 162::Int, 163::Int, 164::Int, 166::Int FROM table(set{1})
	UNION ALL
	SELECT 163::Int, 164::Int, 165::Int, 167::Int FROM table(set{1})
	UNION ALL
	SELECT 164::Int, 165::Int, 166::Int, 168::Int FROM table(set{1})
	UNION ALL
	SELECT 165::Int, 166::Int, 167::Int, 169::Int FROM table(set{1})
	UNION ALL
	SELECT 166::Int, 167::Int, 168::Int, 170::Int FROM table(set{1})
	UNION ALL
	SELECT 167::Int, 168::Int, 169::Int, 171::Int FROM table(set{1})
	UNION ALL
	SELECT 168::Int, 169::Int, 170::Int, 172::Int FROM table(set{1})
	UNION ALL
	SELECT 169::Int, 170::Int, 171::Int, 173::Int FROM table(set{1})
	UNION ALL
	SELECT 170::Int, 171::Int, 172::Int, 174::Int FROM table(set{1})
	UNION ALL
	SELECT 171::Int, 172::Int, 173::Int, 175::Int FROM table(set{1})
	UNION ALL
	SELECT 172::Int, 173::Int, 174::Int, 176::Int FROM table(set{1})
	UNION ALL
	SELECT 173::Int, 174::Int, 175::Int, 177::Int FROM table(set{1})
	UNION ALL
	SELECT 174::Int, 175::Int, 176::Int, 178::Int FROM table(set{1})
	UNION ALL
	SELECT 175::Int, 176::Int, 177::Int, 179::Int FROM table(set{1})
	UNION ALL
	SELECT 176::Int, 177::Int, 178::Int, 180::Int FROM table(set{1})
	UNION ALL
	SELECT 177::Int, 178::Int, 179::Int, 181::Int FROM table(set{1})
	UNION ALL
	SELECT 178::Int, 179::Int, 180::Int, 182::Int FROM table(set{1})
	UNION ALL
	SELECT 179::Int, 180::Int, 181::Int, 183::Int FROM table(set{1})
	UNION ALL
	SELECT 180::Int, 181::Int, 182::Int, 184::Int FROM table(set{1})
	UNION ALL
	SELECT 181::Int, 182::Int, 183::Int, 185::Int FROM table(set{1})
	UNION ALL
	SELECT 182::Int, 183::Int, 184::Int, 186::Int FROM table(set{1})
	UNION ALL
	SELECT 183::Int, 184::Int, 185::Int, 187::Int FROM table(set{1})
	UNION ALL
	SELECT 184::Int, 185::Int, 186::Int, 188::Int FROM table(set{1})
	UNION ALL
	SELECT 185::Int, 186::Int, 187::Int, 189::Int FROM table(set{1})
	UNION ALL
	SELECT 186::Int, 187::Int, 188::Int, 190::Int FROM table(set{1})
	UNION ALL
	SELECT 187::Int, 188::Int, 189::Int, 191::Int FROM table(set{1})
	UNION ALL
	SELECT 188::Int, 189::Int, 190::Int, 192::Int FROM table(set{1})
	UNION ALL
	SELECT 189::Int, 190::Int, 191::Int, 193::Int FROM table(set{1})
	UNION ALL
	SELECT 190::Int, 191::Int, 192::Int, 194::Int FROM table(set{1})
	UNION ALL
	SELECT 191::Int, 192::Int, 193::Int, 195::Int FROM table(set{1})
	UNION ALL
	SELECT 192::Int, 193::Int, 194::Int, 196::Int FROM table(set{1})
	UNION ALL
	SELECT 193::Int, 194::Int, 195::Int, 197::Int FROM table(set{1})
	UNION ALL
	SELECT 194::Int, 195::Int, 196::Int, 198::Int FROM table(set{1})
	UNION ALL
	SELECT 195::Int, 196::Int, 197::Int, 199::Int FROM table(set{1})
	UNION ALL
	SELECT 196::Int, 197::Int, 198::Int, 200::Int FROM table(set{1})
	UNION ALL
	SELECT 197::Int, 198::Int, 199::Int, 201::Int FROM table(set{1})
	UNION ALL
	SELECT 198::Int, 199::Int, 200::Int, 202::Int FROM table(set{1})
	UNION ALL
	SELECT 199::Int, 200::Int, 201::Int, 203::Int FROM table(set{1})
	UNION ALL
	SELECT 200::Int, 201::Int, 202::Int, 204::Int FROM table(set{1})
	UNION ALL
	SELECT 201::Int, 202::Int, 203::Int, 205::Int FROM table(set{1})
	UNION ALL
	SELECT 202::Int, 203::Int, 204::Int, 206::Int FROM table(set{1})
	UNION ALL
	SELECT 203::Int, 204::Int, 205::Int, 207::Int FROM table(set{1})
	UNION ALL
	SELECT 204::Int, 205::Int, 206::Int, 208::Int FROM table(set{1})
	UNION ALL
	SELECT 205::Int, 206::Int, 207::Int, 209::Int FROM table(set{1})
	UNION ALL
	SELECT 206::Int, 207::Int, 208::Int, 210::Int FROM table(set{1})
	UNION ALL
	SELECT 207::Int, 208::Int, 209::Int, 211::Int FROM table(set{1})
	UNION ALL
	SELECT 208::Int, 209::Int, 210::Int, 212::Int FROM table(set{1})
	UNION ALL
	SELECT 209::Int, 210::Int, 211::Int, 213::Int FROM table(set{1})
	UNION ALL
	SELECT 210::Int, 211::Int, 212::Int, 214::Int FROM table(set{1})
	UNION ALL
	SELECT 211::Int, 212::Int, 213::Int, 215::Int FROM table(set{1})
	UNION ALL
	SELECT 212::Int, 213::Int, 214::Int, 216::Int FROM table(set{1})
	UNION ALL
	SELECT 213::Int, 214::Int, 215::Int, 217::Int FROM table(set{1})
	UNION ALL
	SELECT 214::Int, 215::Int, 216::Int, 218::Int FROM table(set{1})
	UNION ALL
	SELECT 215::Int, 216::Int, 217::Int, 219::Int FROM table(set{1})
	UNION ALL
	SELECT 216::Int, 217::Int, 218::Int, 220::Int FROM table(set{1})
	UNION ALL
	SELECT 217::Int, 218::Int, 219::Int, 221::Int FROM table(set{1})
	UNION ALL
	SELECT 218::Int, 219::Int, 220::Int, 222::Int FROM table(set{1})
	UNION ALL
	SELECT 219::Int, 220::Int, 221::Int, 223::Int FROM table(set{1})
	UNION ALL
	SELECT 220::Int, 221::Int, 222::Int, 224::Int FROM table(set{1})
	UNION ALL
	SELECT 221::Int, 222::Int, 223::Int, 225::Int FROM table(set{1})
	UNION ALL
	SELECT 222::Int, 223::Int, 224::Int, 226::Int FROM table(set{1})
	UNION ALL
	SELECT 223::Int, 224::Int, 225::Int, 227::Int FROM table(set{1})
	UNION ALL
	SELECT 224::Int, 225::Int, 226::Int, 228::Int FROM table(set{1})
	UNION ALL
	SELECT 225::Int, 226::Int, 227::Int, 229::Int FROM table(set{1})
	UNION ALL
	SELECT 226::Int, 227::Int, 228::Int, 230::Int FROM table(set{1})
	UNION ALL
	SELECT 227::Int, 228::Int, 229::Int, 231::Int FROM table(set{1})
	UNION ALL
	SELECT 228::Int, 229::Int, 230::Int, 232::Int FROM table(set{1})
	UNION ALL
	SELECT 229::Int, 230::Int, 231::Int, 233::Int FROM table(set{1})
	UNION ALL
	SELECT 230::Int, 231::Int, 232::Int, 234::Int FROM table(set{1})
	UNION ALL
	SELECT 231::Int, 232::Int, 233::Int, 235::Int FROM table(set{1})
	UNION ALL
	SELECT 232::Int, 233::Int, 234::Int, 236::Int FROM table(set{1})
	UNION ALL
	SELECT 233::Int, 234::Int, 235::Int, 237::Int FROM table(set{1})
	UNION ALL
	SELECT 234::Int, 235::Int, 236::Int, 238::Int FROM table(set{1})
	UNION ALL
	SELECT 235::Int, 236::Int, 237::Int, 239::Int FROM table(set{1})
	UNION ALL
	SELECT 236::Int, 237::Int, 238::Int, 240::Int FROM table(set{1})
	UNION ALL
	SELECT 237::Int, 238::Int, 239::Int, 241::Int FROM table(set{1})
	UNION ALL
	SELECT 238::Int, 239::Int, 240::Int, 242::Int FROM table(set{1})
	UNION ALL
	SELECT 239::Int, 240::Int, 241::Int, 243::Int FROM table(set{1})
	UNION ALL
	SELECT 240::Int, 241::Int, 242::Int, 244::Int FROM table(set{1})
	UNION ALL
	SELECT 241::Int, 242::Int, 243::Int, 245::Int FROM table(set{1})
	UNION ALL
	SELECT 242::Int, 243::Int, 244::Int, 246::Int FROM table(set{1})
	UNION ALL
	SELECT 243::Int, 244::Int, 245::Int, 247::Int FROM table(set{1})
	UNION ALL
	SELECT 244::Int, 245::Int, 246::Int, 248::Int FROM table(set{1})
	UNION ALL
	SELECT 245::Int, 246::Int, 247::Int, 249::Int FROM table(set{1})
	UNION ALL
	SELECT 246::Int, 247::Int, 248::Int, 250::Int FROM table(set{1})
	UNION ALL
	SELECT 247::Int, 248::Int, 249::Int, 251::Int FROM table(set{1})
	UNION ALL
	SELECT 248::Int, 249::Int, 250::Int, 252::Int FROM table(set{1})
	UNION ALL
	SELECT 249::Int, 250::Int, 251::Int, 253::Int FROM table(set{1})
	UNION ALL
	SELECT 250::Int, 251::Int, 252::Int, 254::Int FROM table(set{1})
	UNION ALL
	SELECT 251::Int, 252::Int, 253::Int, 255::Int FROM table(set{1})
	UNION ALL
	SELECT 252::Int, 253::Int, 254::Int, 256::Int FROM table(set{1})
	UNION ALL
	SELECT 253::Int, 254::Int, 255::Int, 257::Int FROM table(set{1})
	UNION ALL
	SELECT 254::Int, 255::Int, 256::Int, 258::Int FROM table(set{1})
	UNION ALL
	SELECT 255::Int, 256::Int, 257::Int, 259::Int FROM table(set{1})
	UNION ALL
	SELECT 256::Int, 257::Int, 258::Int, 260::Int FROM table(set{1})
	UNION ALL
	SELECT 257::Int, 258::Int, 259::Int, 261::Int FROM table(set{1})
	UNION ALL
	SELECT 258::Int, 259::Int, 260::Int, 262::Int FROM table(set{1})
	UNION ALL
	SELECT 259::Int, 260::Int, 261::Int, 263::Int FROM table(set{1})
	UNION ALL
	SELECT 260::Int, 261::Int, 262::Int, 264::Int FROM table(set{1})
	UNION ALL
	SELECT 261::Int, 262::Int, 263::Int, 265::Int FROM table(set{1})
	UNION ALL
	SELECT 262::Int, 263::Int, 264::Int, 266::Int FROM table(set{1})
	UNION ALL
	SELECT 263::Int, 264::Int, 265::Int, 267::Int FROM table(set{1})
	UNION ALL
	SELECT 264::Int, 265::Int, 266::Int, 268::Int FROM table(set{1})
	UNION ALL
	SELECT 265::Int, 266::Int, 267::Int, 269::Int FROM table(set{1})
	UNION ALL
	SELECT 266::Int, 267::Int, 268::Int, 270::Int FROM table(set{1})
	UNION ALL
	SELECT 267::Int, 268::Int, 269::Int, 271::Int FROM table(set{1})
	UNION ALL
	SELECT 268::Int, 269::Int, 270::Int, 272::Int FROM table(set{1})
	UNION ALL
	SELECT 269::Int, 270::Int, 271::Int, 273::Int FROM table(set{1})
	UNION ALL
	SELECT 270::Int, 271::Int, 272::Int, 274::Int FROM table(set{1})
	UNION ALL
	SELECT 271::Int, 272::Int, 273::Int, 275::Int FROM table(set{1})
	UNION ALL
	SELECT 272::Int, 273::Int, 274::Int, 276::Int FROM table(set{1})
	UNION ALL
	SELECT 273::Int, 274::Int, 275::Int, 277::Int FROM table(set{1})
	UNION ALL
	SELECT 274::Int, 275::Int, 276::Int, 278::Int FROM table(set{1})
	UNION ALL
	SELECT 275::Int, 276::Int, 277::Int, 279::Int FROM table(set{1})
	UNION ALL
	SELECT 276::Int, 277::Int, 278::Int, 280::Int FROM table(set{1})
	UNION ALL
	SELECT 277::Int, 278::Int, 279::Int, 281::Int FROM table(set{1})
	UNION ALL
	SELECT 278::Int, 279::Int, 280::Int, 282::Int FROM table(set{1})
	UNION ALL
	SELECT 279::Int, 280::Int, 281::Int, 283::Int FROM table(set{1})
	UNION ALL
	SELECT 280::Int, 281::Int, 282::Int, 284::Int FROM table(set{1})
	UNION ALL
	SELECT 281::Int, 282::Int, 283::Int, 285::Int FROM table(set{1})
	UNION ALL
	SELECT 282::Int, 283::Int, 284::Int, 286::Int FROM table(set{1})
	UNION ALL
	SELECT 283::Int, 284::Int, 285::Int, 287::Int FROM table(set{1})
	UNION ALL
	SELECT 284::Int, 285::Int, 286::Int, 288::Int FROM table(set{1})
	UNION ALL
	SELECT 285::Int, 286::Int, 287::Int, 289::Int FROM table(set{1})
	UNION ALL
	SELECT 286::Int, 287::Int, 288::Int, 290::Int FROM table(set{1})
	UNION ALL
	SELECT 287::Int, 288::Int, 289::Int, 291::Int FROM table(set{1})
	UNION ALL
	SELECT 288::Int, 289::Int, 290::Int, 292::Int FROM table(set{1})
	UNION ALL
	SELECT 289::Int, 290::Int, 291::Int, 293::Int FROM table(set{1})
	UNION ALL
	SELECT 290::Int, 291::Int, 292::Int, 294::Int FROM table(set{1})
	UNION ALL
	SELECT 291::Int, 292::Int, 293::Int, 295::Int FROM table(set{1})
	UNION ALL
	SELECT 292::Int, 293::Int, 294::Int, 296::Int FROM table(set{1})
	UNION ALL
	SELECT 293::Int, 294::Int, 295::Int, 297::Int FROM table(set{1})
	UNION ALL
	SELECT 294::Int, 295::Int, 296::Int, 298::Int FROM table(set{1})
	UNION ALL
	SELECT 295::Int, 296::Int, 297::Int, 299::Int FROM table(set{1})
	UNION ALL
	SELECT 296::Int, 297::Int, 298::Int, 300::Int FROM table(set{1})
	UNION ALL
	SELECT 297::Int, 298::Int, 299::Int, 301::Int FROM table(set{1})
	UNION ALL
	SELECT 298::Int, 299::Int, 300::Int, 302::Int FROM table(set{1})
	UNION ALL
	SELECT 299::Int, 300::Int, 301::Int, 303::Int FROM table(set{1})
	UNION ALL
	SELECT 300::Int, 301::Int, 302::Int, 304::Int FROM table(set{1})
	UNION ALL
	SELECT 301::Int, 302::Int, 303::Int, 305::Int FROM table(set{1})
	UNION ALL
	SELECT 302::Int, 303::Int, 304::Int, 306::Int FROM table(set{1})
	UNION ALL
	SELECT 303::Int, 304::Int, 305::Int, 307::Int FROM table(set{1})
	UNION ALL
	SELECT 304::Int, 305::Int, 306::Int, 308::Int FROM table(set{1})
	UNION ALL
	SELECT 305::Int, 306::Int, 307::Int, 309::Int FROM table(set{1})
	UNION ALL
	SELECT 306::Int, 307::Int, 308::Int, 310::Int FROM table(set{1})
	UNION ALL
	SELECT 307::Int, 308::Int, 309::Int, 311::Int FROM table(set{1})
	UNION ALL
	SELECT 308::Int, 309::Int, 310::Int, 312::Int FROM table(set{1})
	UNION ALL
	SELECT 309::Int, 310::Int, 311::Int, 313::Int FROM table(set{1})
	UNION ALL
	SELECT 310::Int, 311::Int, 312::Int, 314::Int FROM table(set{1})
	UNION ALL
	SELECT 311::Int, 312::Int, 313::Int, 315::Int FROM table(set{1})
	UNION ALL
	SELECT 312::Int, 313::Int, 314::Int, 316::Int FROM table(set{1})
	UNION ALL
	SELECT 313::Int, 314::Int, 315::Int, 317::Int FROM table(set{1})
	UNION ALL
	SELECT 314::Int, 315::Int, 316::Int, 318::Int FROM table(set{1})
	UNION ALL
	SELECT 315::Int, 316::Int, 317::Int, 319::Int FROM table(set{1})
	UNION ALL
	SELECT 316::Int, 317::Int, 318::Int, 320::Int FROM table(set{1})
	UNION ALL
	SELECT 317::Int, 318::Int, 319::Int, 321::Int FROM table(set{1})
	UNION ALL
	SELECT 318::Int, 319::Int, 320::Int, 322::Int FROM table(set{1})
	UNION ALL
	SELECT 319::Int, 320::Int, 321::Int, 323::Int FROM table(set{1})
	UNION ALL
	SELECT 320::Int, 321::Int, 322::Int, 324::Int FROM table(set{1})
	UNION ALL
	SELECT 321::Int, 322::Int, 323::Int, 325::Int FROM table(set{1})
	UNION ALL
	SELECT 322::Int, 323::Int, 324::Int, 326::Int FROM table(set{1})
	UNION ALL
	SELECT 323::Int, 324::Int, 325::Int, 327::Int FROM table(set{1})
	UNION ALL
	SELECT 324::Int, 325::Int, 326::Int, 328::Int FROM table(set{1})
	UNION ALL
	SELECT 325::Int, 326::Int, 327::Int, 329::Int FROM table(set{1})
	UNION ALL
	SELECT 326::Int, 327::Int, 328::Int, 330::Int FROM table(set{1})
	UNION ALL
	SELECT 327::Int, 328::Int, 329::Int, 331::Int FROM table(set{1})
	UNION ALL
	SELECT 328::Int, 329::Int, 330::Int, 332::Int FROM table(set{1})
	UNION ALL
	SELECT 329::Int, 330::Int, 331::Int, 333::Int FROM table(set{1})
	UNION ALL
	SELECT 330::Int, 331::Int, 332::Int, 334::Int FROM table(set{1})
	UNION ALL
	SELECT 331::Int, 332::Int, 333::Int, 335::Int FROM table(set{1})
	UNION ALL
	SELECT 332::Int, 333::Int, 334::Int, 336::Int FROM table(set{1})
	UNION ALL
	SELECT 333::Int, 334::Int, 335::Int, 337::Int FROM table(set{1})
	UNION ALL
	SELECT 334::Int, 335::Int, 336::Int, 338::Int FROM table(set{1})
	UNION ALL
	SELECT 335::Int, 336::Int, 337::Int, 339::Int FROM table(set{1})
	UNION ALL
	SELECT 336::Int, 337::Int, 338::Int, 340::Int FROM table(set{1})
	UNION ALL
	SELECT 337::Int, 338::Int, 339::Int, 341::Int FROM table(set{1})
	UNION ALL
	SELECT 338::Int, 339::Int, 340::Int, 342::Int FROM table(set{1})
	UNION ALL
	SELECT 339::Int, 340::Int, 341::Int, 343::Int FROM table(set{1})
	UNION ALL
	SELECT 340::Int, 341::Int, 342::Int, 344::Int FROM table(set{1})
	UNION ALL
	SELECT 341::Int, 342::Int, 343::Int, 345::Int FROM table(set{1})
	UNION ALL
	SELECT 342::Int, 343::Int, 344::Int, 346::Int FROM table(set{1})
	UNION ALL
	SELECT 343::Int, 344::Int, 345::Int, 347::Int FROM table(set{1})
	UNION ALL
	SELECT 344::Int, 345::Int, 346::Int, 348::Int FROM table(set{1})
	UNION ALL
	SELECT 345::Int, 346::Int, 347::Int, 349::Int FROM table(set{1})
	UNION ALL
	SELECT 346::Int, 347::Int, 348::Int, 350::Int FROM table(set{1})
	UNION ALL
	SELECT 347::Int, 348::Int, 349::Int, 351::Int FROM table(set{1})
	UNION ALL
	SELECT 348::Int, 349::Int, 350::Int, 352::Int FROM table(set{1})
	UNION ALL
	SELECT 349::Int, 350::Int, 351::Int, 353::Int FROM table(set{1})
	UNION ALL
	SELECT 350::Int, 351::Int, 352::Int, 354::Int FROM table(set{1})
	UNION ALL
	SELECT 351::Int, 352::Int, 353::Int, 355::Int FROM table(set{1})
	UNION ALL
	SELECT 352::Int, 353::Int, 354::Int, 356::Int FROM table(set{1})
	UNION ALL
	SELECT 353::Int, 354::Int, 355::Int, 357::Int FROM table(set{1})
	UNION ALL
	SELECT 354::Int, 355::Int, 356::Int, 358::Int FROM table(set{1})
	UNION ALL
	SELECT 355::Int, 356::Int, 357::Int, 359::Int FROM table(set{1})
	UNION ALL
	SELECT 356::Int, 357::Int, 358::Int, 360::Int FROM table(set{1})
	UNION ALL
	SELECT 357::Int, 358::Int, 359::Int, 361::Int FROM table(set{1})
	UNION ALL
	SELECT 358::Int, 359::Int, 360::Int, 362::Int FROM table(set{1})
	UNION ALL
	SELECT 359::Int, 360::Int, 361::Int, 363::Int FROM table(set{1})
	UNION ALL
	SELECT 360::Int, 361::Int, 362::Int, 364::Int FROM table(set{1})
	UNION ALL
	SELECT 361::Int, 362::Int, 363::Int, 365::Int FROM table(set{1})
	UNION ALL
	SELECT 362::Int, 363::Int, 364::Int, 366::Int FROM table(set{1})
	UNION ALL
	SELECT 363::Int, 364::Int, 365::Int, 367::Int FROM table(set{1})
	UNION ALL
	SELECT 364::Int, 365::Int, 366::Int, 368::Int FROM table(set{1})
	UNION ALL
	SELECT 365::Int, 366::Int, 367::Int, 369::Int FROM table(set{1})
	UNION ALL
	SELECT 366::Int, 367::Int, 368::Int, 370::Int FROM table(set{1})
	UNION ALL
	SELECT 367::Int, 368::Int, 369::Int, 371::Int FROM table(set{1})
	UNION ALL
	SELECT 368::Int, 369::Int, 370::Int, 372::Int FROM table(set{1})
	UNION ALL
	SELECT 369::Int, 370::Int, 371::Int, 373::Int FROM table(set{1})
	UNION ALL
	SELECT 370::Int, 371::Int, 372::Int, 374::Int FROM table(set{1})
	UNION ALL
	SELECT 371::Int, 372::Int, 373::Int, 375::Int FROM table(set{1})
	UNION ALL
	SELECT 372::Int, 373::Int, 374::Int, 376::Int FROM table(set{1})
	UNION ALL
	SELECT 373::Int, 374::Int, 375::Int, 377::Int FROM table(set{1})
	UNION ALL
	SELECT 374::Int, 375::Int, 376::Int, 378::Int FROM table(set{1})
	UNION ALL
	SELECT 375::Int, 376::Int, 377::Int, 379::Int FROM table(set{1})
	UNION ALL
	SELECT 376::Int, 377::Int, 378::Int, 380::Int FROM table(set{1})
	UNION ALL
	SELECT 377::Int, 378::Int, 379::Int, 381::Int FROM table(set{1})
	UNION ALL
	SELECT 378::Int, 379::Int, 380::Int, 382::Int FROM table(set{1})
	UNION ALL
	SELECT 379::Int, 380::Int, 381::Int, 383::Int FROM table(set{1})
	UNION ALL
	SELECT 380::Int, 381::Int, 382::Int, 384::Int FROM table(set{1})
	UNION ALL
	SELECT 381::Int, 382::Int, 383::Int, 385::Int FROM table(set{1})
	UNION ALL
	SELECT 382::Int, 383::Int, 384::Int, 386::Int FROM table(set{1})
	UNION ALL
	SELECT 383::Int, 384::Int, 385::Int, 387::Int FROM table(set{1})
	UNION ALL
	SELECT 384::Int, 385::Int, 386::Int, 388::Int FROM table(set{1})
	UNION ALL
	SELECT 385::Int, 386::Int, 387::Int, 389::Int FROM table(set{1})
	UNION ALL
	SELECT 386::Int, 387::Int, 388::Int, 390::Int FROM table(set{1})
	UNION ALL
	SELECT 387::Int, 388::Int, 389::Int, 391::Int FROM table(set{1})
	UNION ALL
	SELECT 388::Int, 389::Int, 390::Int, 392::Int FROM table(set{1})
	UNION ALL
	SELECT 389::Int, 390::Int, 391::Int, 393::Int FROM table(set{1})
	UNION ALL
	SELECT 390::Int, 391::Int, 392::Int, 394::Int FROM table(set{1})
	UNION ALL
	SELECT 391::Int, 392::Int, 393::Int, 395::Int FROM table(set{1})
	UNION ALL
	SELECT 392::Int, 393::Int, 394::Int, 396::Int FROM table(set{1})
	UNION ALL
	SELECT 393::Int, 394::Int, 395::Int, 397::Int FROM table(set{1})
	UNION ALL
	SELECT 394::Int, 395::Int, 396::Int, 398::Int FROM table(set{1})
	UNION ALL
	SELECT 395::Int, 396::Int, 397::Int, 399::Int FROM table(set{1})
	UNION ALL
	SELECT 396::Int, 397::Int, 398::Int, 400::Int FROM table(set{1})
	UNION ALL
	SELECT 397::Int, 398::Int, 399::Int, 401::Int FROM table(set{1})
	UNION ALL
	SELECT 398::Int, 399::Int, 400::Int, 402::Int FROM table(set{1})
	UNION ALL
	SELECT 399::Int, 400::Int, 401::Int, 403::Int FROM table(set{1})
	UNION ALL
	SELECT 400::Int, 401::Int, 402::Int, 404::Int FROM table(set{1})
	UNION ALL
	SELECT 401::Int, 402::Int, 403::Int, 405::Int FROM table(set{1})
	UNION ALL
	SELECT 402::Int, 403::Int, 404::Int, 406::Int FROM table(set{1})
	UNION ALL
	SELECT 403::Int, 404::Int, 405::Int, 407::Int FROM table(set{1})
	UNION ALL
	SELECT 404::Int, 405::Int, 406::Int, 408::Int FROM table(set{1})
	UNION ALL
	SELECT 405::Int, 406::Int, 407::Int, 409::Int FROM table(set{1})
	UNION ALL
	SELECT 406::Int, 407::Int, 408::Int, 410::Int FROM table(set{1})
	UNION ALL
	SELECT 407::Int, 408::Int, 409::Int, 411::Int FROM table(set{1})
	UNION ALL
	SELECT 408::Int, 409::Int, 410::Int, 412::Int FROM table(set{1})
	UNION ALL
	SELECT 409::Int, 410::Int, 411::Int, 413::Int FROM table(set{1})
	UNION ALL
	SELECT 410::Int, 411::Int, 412::Int, 414::Int FROM table(set{1})
	UNION ALL
	SELECT 411::Int, 412::Int, 413::Int, 415::Int FROM table(set{1})
	UNION ALL
	SELECT 412::Int, 413::Int, 414::Int, 416::Int FROM table(set{1})
	UNION ALL
	SELECT 413::Int, 414::Int, 415::Int, 417::Int FROM table(set{1})
	UNION ALL
	SELECT 414::Int, 415::Int, 416::Int, 418::Int FROM table(set{1})
	UNION ALL
	SELECT 415::Int, 416::Int, 417::Int, 419::Int FROM table(set{1})
	UNION ALL
	SELECT 416::Int, 417::Int, 418::Int, 420::Int FROM table(set{1})
	UNION ALL
	SELECT 417::Int, 418::Int, 419::Int, 421::Int FROM table(set{1})
	UNION ALL
	SELECT 418::Int, 419::Int, 420::Int, 422::Int FROM table(set{1})
	UNION ALL
	SELECT 419::Int, 420::Int, 421::Int, 423::Int FROM table(set{1})
	UNION ALL
	SELECT 420::Int, 421::Int, 422::Int, 424::Int FROM table(set{1})
	UNION ALL
	SELECT 421::Int, 422::Int, 423::Int, 425::Int FROM table(set{1})
	UNION ALL
	SELECT 422::Int, 423::Int, 424::Int, 426::Int FROM table(set{1})
	UNION ALL
	SELECT 423::Int, 424::Int, 425::Int, 427::Int FROM table(set{1})
	UNION ALL
	SELECT 424::Int, 425::Int, 426::Int, 428::Int FROM table(set{1})
	UNION ALL
	SELECT 425::Int, 426::Int, 427::Int, 429::Int FROM table(set{1})
	UNION ALL
	SELECT 426::Int, 427::Int, 428::Int, 430::Int FROM table(set{1})
	UNION ALL
	SELECT 427::Int, 428::Int, 429::Int, 431::Int FROM table(set{1})
	UNION ALL
	SELECT 428::Int, 429::Int, 430::Int, 432::Int FROM table(set{1})
	UNION ALL
	SELECT 429::Int, 430::Int, 431::Int, 433::Int FROM table(set{1})
	UNION ALL
	SELECT 430::Int, 431::Int, 432::Int, 434::Int FROM table(set{1})
	UNION ALL
	SELECT 431::Int, 432::Int, 433::Int, 435::Int FROM table(set{1})
	UNION ALL
	SELECT 432::Int, 433::Int, 434::Int, 436::Int FROM table(set{1})
	UNION ALL
	SELECT 433::Int, 434::Int, 435::Int, 437::Int FROM table(set{1})
	UNION ALL
	SELECT 434::Int, 435::Int, 436::Int, 438::Int FROM table(set{1})
	UNION ALL
	SELECT 435::Int, 436::Int, 437::Int, 439::Int FROM table(set{1})
	UNION ALL
	SELECT 436::Int, 437::Int, 438::Int, 440::Int FROM table(set{1})
	UNION ALL
	SELECT 437::Int, 438::Int, 439::Int, 441::Int FROM table(set{1})
	UNION ALL
	SELECT 438::Int, 439::Int, 440::Int, 442::Int FROM table(set{1})
	UNION ALL
	SELECT 439::Int, 440::Int, 441::Int, 443::Int FROM table(set{1})
	UNION ALL
	SELECT 440::Int, 441::Int, 442::Int, 444::Int FROM table(set{1})
	UNION ALL
	SELECT 441::Int, 442::Int, 443::Int, 445::Int FROM table(set{1})
	UNION ALL
	SELECT 442::Int, 443::Int, 444::Int, 446::Int FROM table(set{1})
	UNION ALL
	SELECT 443::Int, 444::Int, 445::Int, 447::Int FROM table(set{1})
	UNION ALL
	SELECT 444::Int, 445::Int, 446::Int, 448::Int FROM table(set{1})
	UNION ALL
	SELECT 445::Int, 446::Int, 447::Int, 449::Int FROM table(set{1})
	UNION ALL
	SELECT 446::Int, 447::Int, 448::Int, 450::Int FROM table(set{1})
	UNION ALL
	SELECT 447::Int, 448::Int, 449::Int, 451::Int FROM table(set{1})
	UNION ALL
	SELECT 448::Int, 449::Int, 450::Int, 452::Int FROM table(set{1})
	UNION ALL
	SELECT 449::Int, 450::Int, 451::Int, 453::Int FROM table(set{1})
	UNION ALL
	SELECT 450::Int, 451::Int, 452::Int, 454::Int FROM table(set{1})
	UNION ALL
	SELECT 451::Int, 452::Int, 453::Int, 455::Int FROM table(set{1})
	UNION ALL
	SELECT 452::Int, 453::Int, 454::Int, 456::Int FROM table(set{1})
	UNION ALL
	SELECT 453::Int, 454::Int, 455::Int, 457::Int FROM table(set{1})
	UNION ALL
	SELECT 454::Int, 455::Int, 456::Int, 458::Int FROM table(set{1})
	UNION ALL
	SELECT 455::Int, 456::Int, 457::Int, 459::Int FROM table(set{1})
	UNION ALL
	SELECT 456::Int, 457::Int, 458::Int, 460::Int FROM table(set{1})
	UNION ALL
	SELECT 457::Int, 458::Int, 459::Int, 461::Int FROM table(set{1})
	UNION ALL
	SELECT 458::Int, 459::Int, 460::Int, 462::Int FROM table(set{1})
	UNION ALL
	SELECT 459::Int, 460::Int, 461::Int, 463::Int FROM table(set{1})
	UNION ALL
	SELECT 460::Int, 461::Int, 462::Int, 464::Int FROM table(set{1})
	UNION ALL
	SELECT 461::Int, 462::Int, 463::Int, 465::Int FROM table(set{1})
	UNION ALL
	SELECT 462::Int, 463::Int, 464::Int, 466::Int FROM table(set{1})
	UNION ALL
	SELECT 463::Int, 464::Int, 465::Int, 467::Int FROM table(set{1})
	UNION ALL
	SELECT 464::Int, 465::Int, 466::Int, 468::Int FROM table(set{1})
	UNION ALL
	SELECT 465::Int, 466::Int, 467::Int, 469::Int FROM table(set{1})
	UNION ALL
	SELECT 466::Int, 467::Int, 468::Int, 470::Int FROM table(set{1})
	UNION ALL
	SELECT 467::Int, 468::Int, 469::Int, 471::Int FROM table(set{1})
	UNION ALL
	SELECT 468::Int, 469::Int, 470::Int, 472::Int FROM table(set{1})
	UNION ALL
	SELECT 469::Int, 470::Int, 471::Int, 473::Int FROM table(set{1})
	UNION ALL
	SELECT 470::Int, 471::Int, 472::Int, 474::Int FROM table(set{1})
	UNION ALL
	SELECT 471::Int, 472::Int, 473::Int, 475::Int FROM table(set{1})
	UNION ALL
	SELECT 472::Int, 473::Int, 474::Int, 476::Int FROM table(set{1})
	UNION ALL
	SELECT 473::Int, 474::Int, 475::Int, 477::Int FROM table(set{1})
	UNION ALL
	SELECT 474::Int, 475::Int, 476::Int, 478::Int FROM table(set{1})
	UNION ALL
	SELECT 475::Int, 476::Int, 477::Int, 479::Int FROM table(set{1})
	UNION ALL
	SELECT 476::Int, 477::Int, 478::Int, 480::Int FROM table(set{1})
	UNION ALL
	SELECT 477::Int, 478::Int, 479::Int, 481::Int FROM table(set{1})
	UNION ALL
	SELECT 478::Int, 479::Int, 480::Int, 482::Int FROM table(set{1})
	UNION ALL
	SELECT 479::Int, 480::Int, 481::Int, 483::Int FROM table(set{1})
	UNION ALL
	SELECT 480::Int, 481::Int, 482::Int, 484::Int FROM table(set{1})
	UNION ALL
	SELECT 481::Int, 482::Int, 483::Int, 485::Int FROM table(set{1})
	UNION ALL
	SELECT 482::Int, 483::Int, 484::Int, 486::Int FROM table(set{1})
	UNION ALL
	SELECT 483::Int, 484::Int, 485::Int, 487::Int FROM table(set{1})
	UNION ALL
	SELECT 484::Int, 485::Int, 486::Int, 488::Int FROM table(set{1})
	UNION ALL
	SELECT 485::Int, 486::Int, 487::Int, 489::Int FROM table(set{1})
	UNION ALL
	SELECT 486::Int, 487::Int, 488::Int, 490::Int FROM table(set{1})
	UNION ALL
	SELECT 487::Int, 488::Int, 489::Int, 491::Int FROM table(set{1})
	UNION ALL
	SELECT 488::Int, 489::Int, 490::Int, 492::Int FROM table(set{1})
	UNION ALL
	SELECT 489::Int, 490::Int, 491::Int, 493::Int FROM table(set{1})
	UNION ALL
	SELECT 490::Int, 491::Int, 492::Int, 494::Int FROM table(set{1})
	UNION ALL
	SELECT 491::Int, 492::Int, 493::Int, 495::Int FROM table(set{1})
	UNION ALL
	SELECT 492::Int, 493::Int, 494::Int, 496::Int FROM table(set{1})
	UNION ALL
	SELECT 493::Int, 494::Int, 495::Int, 497::Int FROM table(set{1})
	UNION ALL
	SELECT 494::Int, 495::Int, 496::Int, 498::Int FROM table(set{1})
	UNION ALL
	SELECT 495::Int, 496::Int, 497::Int, 499::Int FROM table(set{1})
	UNION ALL
	SELECT 496::Int, 497::Int, 498::Int, 500::Int FROM table(set{1})
	UNION ALL
	SELECT 497::Int, 498::Int, 499::Int, 501::Int FROM table(set{1})
	UNION ALL
	SELECT 498::Int, 499::Int, 500::Int, 502::Int FROM table(set{1})
	UNION ALL
	SELECT 499::Int, 500::Int, 501::Int, 503::Int FROM table(set{1})
	UNION ALL
	SELECT 500::Int, 501::Int, 502::Int, 504::Int FROM table(set{1})
	UNION ALL
	SELECT 501::Int, 502::Int, 503::Int, 505::Int FROM table(set{1})
	UNION ALL
	SELECT 502::Int, 503::Int, 504::Int, 506::Int FROM table(set{1})
	UNION ALL
	SELECT 503::Int, 504::Int, 505::Int, 507::Int FROM table(set{1})
	UNION ALL
	SELECT 504::Int, 505::Int, 506::Int, 508::Int FROM table(set{1})) Source
(
	Id,
	Field1,
	Field2,
	Field4
)
ON (Target.Id = Source.Id)

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	Field1,
	Field2,
	Field4
)
VALUES
(
	Source.Id,
	Source.Field1,
	Source.Field2,
	Source.Field4
)

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Field1,
	t1.Field2,
	t1.Field3,
	t1.Field4,
	t1.Field5
FROM
	TestMerge1 t1
ORDER BY
	t1.Id

