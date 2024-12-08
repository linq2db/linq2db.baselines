(503258) SELECT 
	t503258.Id = t503257.Id
FROM [DctSetpointtype(503257)] as t503257 (spt)
		LEFT JOIN (
			[VWellTree(503260)] as t503260 (t2)
				INNER JOIN [DctOu(503262)] as t503262 (tp2) ON ({t503260.ShopId?}? = {t503262.Id})
				LEFT JOIN [UacUsersDatagroup(503265)] as t503265 (cudg) ON ({t503262.Id} = {t503265.DatagroupId} AND {t503265.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(503270)] as t503270 (oudg) ON ({t503262.ParentId?}? = {t503270.DatagroupId} AND {t503270.UserId} = 150 AND {t503270.Inheritablepermission} > 0)
				INNER JOIN [Deviation(503290)] as t503290 (d) ON ({t503260.WellId?}? = {t503290.WellId})
		)  ON ({t503290.SetpointtypeId} = {t503257.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t503265.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t503270.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
