(700995) SELECT 
	t700995.Id = t700994.Id
FROM [DctSetpointtype(700994)] as t700994 (spt)
		LEFT JOIN (
			[VWellTree(700997)] as t700997 (t2)
				INNER JOIN [DctOu(700999)] as t700999 (tp2) ON ({t700997.ShopId?}? = {t700999.Id})
				LEFT JOIN [UacUsersDatagroup(701002)] as t701002 (cudg) ON ({t700999.Id} = {t701002.DatagroupId} AND {t701002.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(701007)] as t701007 (oudg) ON ({t700999.ParentId?}? = {t701007.DatagroupId} AND {t701007.UserId} = 150 AND {t701007.Inheritablepermission} > 0)
				INNER JOIN [Deviation(701027)] as t701027 (d) ON ({t700997.WellId?}? = {t701027.WellId})
		)  ON ({t701027.SetpointtypeId} = {t700994.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t701002.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t701007.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
