(244005) SELECT 
	t244005.Id = t244004.Id
FROM [DctSetpointtype(244004)] as t244004 (spt)
		LEFT JOIN (
			[VWellTree(244007)] as t244007 (t2)
				INNER JOIN [DctOu(244009)] as t244009 (tp2) ON ({t244007.ShopId?}? = {t244009.Id})
				LEFT JOIN [UacUsersDatagroup(244012)] as t244012 (cudg) ON ({t244009.Id} = {t244012.DatagroupId} AND {t244012.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(244017)] as t244017 (oudg) ON ({t244009.ParentId?}? = {t244017.DatagroupId} AND {t244017.UserId} = 150 AND {t244017.Inheritablepermission} > 0)
				INNER JOIN [Deviation(244037)] as t244037 (d) ON ({t244007.WellId?}? = {t244037.WellId})
		)  ON ({t244037.SetpointtypeId} = {t244004.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t244012.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t244017.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
