(491453) SELECT 
	t491453.Id = t491452.Id
FROM [DctSetpointtype(491452)] as t491452 (spt)
		LEFT JOIN (
			[VWellTree(491455)] as t491455 (t2)
				INNER JOIN [DctOu(491457)] as t491457 (tp2) ON ({t491455.ShopId?}? = {t491457.Id})
				LEFT JOIN [UacUsersDatagroup(491460)] as t491460 (cudg) ON ({t491457.Id} = {t491460.DatagroupId} AND {t491460.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(491465)] as t491465 (oudg) ON ({t491457.ParentId?}? = {t491465.DatagroupId} AND {t491465.UserId} = 150 AND {t491465.Inheritablepermission} > 0)
				INNER JOIN [Deviation(491485)] as t491485 (d) ON ({t491455.WellId?}? = {t491485.WellId})
		)  ON ({t491485.SetpointtypeId} = {t491452.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t491460.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t491465.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
