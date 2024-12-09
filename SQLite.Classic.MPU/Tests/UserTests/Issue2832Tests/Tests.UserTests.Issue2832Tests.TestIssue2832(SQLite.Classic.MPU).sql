(426151) SELECT 
	t426151.Id = t426150.Id
FROM [DctSetpointtype(426150)] as t426150 (spt)
		LEFT JOIN (
			[VWellTree(426153)] as t426153 (t2)
				INNER JOIN [DctOu(426155)] as t426155 (tp2) ON ({t426153.ShopId?}? = {t426155.Id})
				LEFT JOIN [UacUsersDatagroup(426158)] as t426158 (cudg) ON ({t426155.Id} = {t426158.DatagroupId} AND {t426158.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(426163)] as t426163 (oudg) ON ({t426155.ParentId?}? = {t426163.DatagroupId} AND {t426163.UserId} = 150 AND {t426163.Inheritablepermission} > 0)
				INNER JOIN [Deviation(426183)] as t426183 (d) ON ({t426153.WellId?}? = {t426183.WellId})
		)  ON ({t426183.SetpointtypeId} = {t426150.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t426158.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t426163.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
