#include "webview.h"
#include <stddef.h>

#ifdef _WIN32
#include <windows.h>
#endif


#ifdef _WIN32
int WINAPI WinMain(HINSTANCE hInst, HINSTANCE hPrevInst, LPSTR lpCmdLine, int nCmdShow) {
  (void)hInst;
  (void)hPrevInst;
  (void)lpCmdLine;
  (void)nCmdShow;
#else

int run(const char* url, char* title, int width, int height) {
#endif
  
  webview_t w = webview_create(0, NULL);
  webview_set_title(w, title);
  webview_set_size(w, width, height, WEBVIEW_HINT_NONE);
  //webview_set_html(w, "Thanks for using webview!");
  webview_navigate(w, url);
  webview_run(w);
  webview_destroy(w);
  return 0;
}

// int main() {
//   run();
// }
	

