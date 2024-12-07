(155100) SELECT 
	t155100.Id = t155099.Id
FROM [DctSetpointtype(155099)] as t155099 (spt)
		LEFT JOIN (
			[VWellTree(155102)] as t155102 (t2)
				INNER JOIN [DctOu(155104)] as t155104 (tp2) ON ({t155102.ShopId?}? = {t155104.Id})
				LEFT JOIN [UacUsersDatagroup(155107)] as t155107 (cudg) ON ({t155104.Id} = {t155107.DatagroupId} AND {t155107.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(155112)] as t155112 (oudg) ON ({t155104.ParentId?}? = {t155112.DatagroupId} AND {t155112.UserId} = 150 AND {t155112.Inheritablepermission} > 0)
				INNER JOIN [Deviation(155132)] as t155132 (d) ON ({t155102.WellId?}? = {t155132.WellId})
		)  ON ({t155132.SetpointtypeId} = {t155099.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t155107.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t155112.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
