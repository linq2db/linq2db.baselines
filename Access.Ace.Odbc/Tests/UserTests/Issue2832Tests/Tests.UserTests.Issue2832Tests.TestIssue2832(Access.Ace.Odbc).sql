(307197) SELECT 
	t307197.Id = t307196.Id
FROM [DctSetpointtype(307196)] as t307196 (spt)
		LEFT JOIN (
			(307233) SELECT 
				t307233.SetpointtypeId = t307229.SetpointtypeId
			FROM [VWellTree(307199)] as t307199 (t2)
					INNER JOIN [DctOu(307201)] as t307201 (tp2) ON ({t307199.ShopId?}? = {t307201.Id})
					LEFT JOIN [UacUsersDatagroup(307204)] as t307204 (cudg) ON ({t307201.Id} = {t307204.DatagroupId} AND {t307204.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307209)] as t307209 (oudg) ON ({t307201.ParentId?}? = {t307209.DatagroupId} AND {t307209.UserId} = 150 AND {t307209.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307229)] as t307229 (d) ON ({t307199.WellId?}? = {t307229.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(t307204.Permission, t307209.Inheritablepermission, NULL)?}? IS NOT NULL)
		) as t307233 (t2_1) ON ({t307233.SetpointtypeId?} = {t307196.Id})
