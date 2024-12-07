(99084) SELECT 
	t99084.Id = t99083.Id
FROM [DctSetpointtype(99083)] as t99083 (spt)
		LEFT JOIN (
			[VWellTree(99086)] as t99086 (t2)
				INNER JOIN [DctOu(99088)] as t99088 (tp2) ON ({t99086.ShopId?}? = {t99088.Id})
				LEFT JOIN [UacUsersDatagroup(99091)] as t99091 (cudg) ON ({t99088.Id} = {t99091.DatagroupId} AND {t99091.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(99096)] as t99096 (oudg) ON ({t99088.ParentId?}? = {t99096.DatagroupId} AND {t99096.UserId} = 150 AND {t99096.Inheritablepermission} > 0)
				INNER JOIN [Deviation(99116)] as t99116 (d) ON ({t99086.WellId?}? = {t99116.WellId})
		)  ON ({t99116.SetpointtypeId} = {t99083.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t99091.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t99096.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
