(499252) SELECT 
	t499252.Id = t499251.Id
FROM [DctSetpointtype(499251)] as t499251 (spt)
		LEFT JOIN (
			[VWellTree(499254)] as t499254 (t2)
				INNER JOIN [DctOu(499256)] as t499256 (tp2) ON ({t499254.ShopId?}? = {t499256.Id})
				LEFT JOIN [UacUsersDatagroup(499259)] as t499259 (cudg) ON ({t499256.Id} = {t499259.DatagroupId} AND {t499259.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(499264)] as t499264 (oudg) ON ({t499256.ParentId?}? = {t499264.DatagroupId} AND {t499264.UserId} = 150 AND {t499264.Inheritablepermission} > 0)
				INNER JOIN [Deviation(499284)] as t499284 (d) ON ({t499254.WellId?}? = {t499284.WellId})
		)  ON ({t499284.SetpointtypeId} = {t499251.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t499259.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t499264.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
