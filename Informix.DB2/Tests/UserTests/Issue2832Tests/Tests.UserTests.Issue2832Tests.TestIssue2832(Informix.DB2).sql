(155846) SELECT 
	t155846.Id = t155845.Id
FROM [DctSetpointtype(155845)] as t155845 (spt)
		LEFT JOIN (
			[VWellTree(155848)] as t155848 (t2)
				INNER JOIN [DctOu(155850)] as t155850 (tp2) ON ({t155848.ShopId?}? = {t155850.Id})
				LEFT JOIN [UacUsersDatagroup(155853)] as t155853 (cudg) ON ({t155850.Id} = {t155853.DatagroupId} AND {t155853.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(155858)] as t155858 (oudg) ON ({t155850.ParentId?}? = {t155858.DatagroupId} AND {t155858.UserId} = 150 AND {t155858.Inheritablepermission} > 0)
				INNER JOIN [Deviation(155878)] as t155878 (d) ON ({t155848.WellId?}? = {t155878.WellId})
		)  ON ({t155878.SetpointtypeId} = {t155845.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t155853.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t155858.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
