#include "ScriptMgr.h"

// Clase base vacía para registrar el módulo en el emulador AzerothCore
class mod_bloodelf_druid : public PlayerScript {
public:
    mod_bloodelf_druid() : PlayerScript("mod_bloodelf_druid") {}
};

// Función de carga requerida por AzerothCore
void Addmod_bloodelf_druidScripts() {
    new mod_bloodelf_druid();
}