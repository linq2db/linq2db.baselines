(307230) SELECT 
	t307230.Id = t307229.Id
FROM [DctSetpointtype(307229)] as t307229 (spt)
		LEFT JOIN (
			(307266) SELECT 
				t307266.SetpointtypeId = t307262.SetpointtypeId
			FROM [VWellTree(307232)] as t307232 (t2)
					INNER JOIN [DctOu(307234)] as t307234 (tp2) ON ({t307232.ShopId?}? = {t307234.Id})
					LEFT JOIN [UacUsersDatagroup(307237)] as t307237 (cudg) ON ({t307234.Id} = {t307237.DatagroupId} AND {t307237.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307242)] as t307242 (oudg) ON ({t307234.ParentId?}? = {t307242.DatagroupId} AND {t307242.UserId} = 150 AND {t307242.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307262)] as t307262 (d) ON ({t307232.WellId?}? = {t307262.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(t307237.Permission, t307242.Inheritablepermission, NULL)?}? IS NOT NULL)
		) as t307266 (t2_1) ON ({t307266.SetpointtypeId?} = {t307229.Id})
