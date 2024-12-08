(245494) SELECT 
	t245494.Id = t245493.Id
FROM [DctSetpointtype(245493)] as t245493 (spt)
		LEFT JOIN (
			[VWellTree(245496)] as t245496 (t2)
				INNER JOIN [DctOu(245498)] as t245498 (tp2) ON ({t245496.ShopId?}? = {t245498.Id})
				LEFT JOIN [UacUsersDatagroup(245501)] as t245501 (cudg) ON ({t245498.Id} = {t245501.DatagroupId} AND {t245501.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245506)] as t245506 (oudg) ON ({t245498.ParentId?}? = {t245506.DatagroupId} AND {t245506.UserId} = 150 AND {t245506.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245526)] as t245526 (d) ON ({t245496.WellId?}? = {t245526.WellId})
		)  ON ({t245526.SetpointtypeId} = {t245493.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245501.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t245506.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
