(488558) SELECT 
	t488558.Id = t488557.Id
FROM [DctSetpointtype(488557)] as t488557 (spt)
		LEFT JOIN (
			[VWellTree(488560)] as t488560 (t2)
				INNER JOIN [DctOu(488562)] as t488562 (tp2) ON ({t488560.ShopId?}? = {t488562.Id})
				LEFT JOIN [UacUsersDatagroup(488565)] as t488565 (cudg) ON ({t488562.Id} = {t488565.DatagroupId} AND {t488565.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(488570)] as t488570 (oudg) ON ({t488562.ParentId?}? = {t488570.DatagroupId} AND {t488570.UserId} = 150 AND {t488570.Inheritablepermission} > 0)
				INNER JOIN [Deviation(488590)] as t488590 (d) ON ({t488560.WellId?}? = {t488590.WellId})
		)  ON ({t488590.SetpointtypeId} = {t488557.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t488565.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t488570.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
