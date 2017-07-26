#include <sourcemod>
#include <sdktools>
#include <cstrike>
#define PLUGIN_VERSION "1.1"
#define PLUGIN_AUTHOR "Elusive"
#define PLUGIN_NAME "Team ME"
#define PLUGIN_URL "https://github.com/MattLParker/SteamScripting/"
#define PLUGIN_DESCRIPTION "Simple plugin that allows you to type !teamme to join T"
#define TEAM1 1
public Plugin:myinfo =
{
	name = PLUGIN_NAME,
	author = PLUGIN_AUTHOR,
	description = PLUGIN_DESCRIPTION,
	version = PLUGIN_VERSION,
	url = PLUGIN_URL
};

public OnPluginStart()
{
		RegConsoleCmd("sm_teamme", Command_teamme);
		}

public Action:Command_teamme(client, args)
{
	ForcePlayerSuicide(client);
	ChangeClientTeam (client, 2)
	return Plugin_Handled;
}