(244992) SELECT 
	t244992.Id = t244991.Id
FROM [DctSetpointtype(244991)] as t244991 (spt)
		LEFT JOIN (
			[VWellTree(244994)] as t244994 (t2)
				INNER JOIN [DctOu(244996)] as t244996 (tp2) ON ({t244994.ShopId?}? = {t244996.Id})
				LEFT JOIN [UacUsersDatagroup(244999)] as t244999 (cudg) ON ({t244996.Id} = {t244999.DatagroupId} AND {t244999.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245004)] as t245004 (oudg) ON ({t244996.ParentId?}? = {t245004.DatagroupId} AND {t245004.UserId} = 150 AND {t245004.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245024)] as t245024 (d) ON ({t244994.WellId?}? = {t245024.WellId})
		)  ON ({t245024.SetpointtypeId} = {t244991.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t244999.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t245004.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
