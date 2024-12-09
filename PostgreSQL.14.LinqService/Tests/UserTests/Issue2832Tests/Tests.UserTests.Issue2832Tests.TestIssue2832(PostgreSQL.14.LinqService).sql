(106781) SELECT 
	t106781.Id = t106780.Id
FROM [DctSetpointtype(106780)] as t106780 (spt)
		LEFT JOIN (
			[VWellTree(106783)] as t106783 (t2)
				INNER JOIN [DctOu(106785)] as t106785 (tp2) ON ({t106783.ShopId?}? = {t106785.Id})
				LEFT JOIN [UacUsersDatagroup(106788)] as t106788 (cudg) ON ({t106785.Id} = {t106788.DatagroupId} AND {t106788.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(106793)] as t106793 (oudg) ON ({t106785.ParentId?}? = {t106793.DatagroupId} AND {t106793.UserId} = 150 AND {t106793.Inheritablepermission} > 0)
				INNER JOIN [Deviation(106813)] as t106813 (d) ON ({t106783.WellId?}? = {t106813.WellId})
		)  ON ({t106813.SetpointtypeId} = {t106780.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t106788.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t106793.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
