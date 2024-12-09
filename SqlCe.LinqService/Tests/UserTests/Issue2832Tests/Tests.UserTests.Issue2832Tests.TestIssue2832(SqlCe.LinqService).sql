(94983) SELECT 
	t94983.Id = t94982.Id
FROM [DctSetpointtype(94982)] as t94982 (spt)
		LEFT JOIN (
			[VWellTree(94985)] as t94985 (t2)
				INNER JOIN [DctOu(94987)] as t94987 (tp2) ON ({t94985.ShopId?}? = {t94987.Id})
				LEFT JOIN [UacUsersDatagroup(94990)] as t94990 (cudg) ON ({t94987.Id} = {t94990.DatagroupId} AND {t94990.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(94995)] as t94995 (oudg) ON ({t94987.ParentId?}? = {t94995.DatagroupId} AND {t94995.UserId} = 150 AND {t94995.Inheritablepermission} > 0)
				INNER JOIN [Deviation(95015)] as t95015 (d) ON ({t94985.WellId?}? = {t95015.WellId})
		)  ON ({t95015.SetpointtypeId} = {t94982.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t94990.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t94995.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
