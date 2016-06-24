# 1 "mikes_project_main.c"
# 1 "C:\\arm_stuff\\Schultz440SP13_project//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "mikes_project_main.c"
# 19 "mikes_project_main.c"
 int Cint;


# 1 "c:\\yagarto\\bin\\../lib/gcc/arm-none-eabi/4.6.2/include/stdint.h" 1 3 4


# 1 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 1 3 4
# 41 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
typedef signed char int8_t ;
typedef unsigned char uint8_t ;




typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;




typedef signed short int16_t;
typedef unsigned short uint16_t;
# 67 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
typedef int16_t int_least16_t;
typedef uint16_t uint_least16_t;
# 79 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
typedef signed long int32_t;
typedef unsigned long uint32_t;
# 97 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
typedef int32_t int_least32_t;
typedef uint32_t uint_least32_t;
# 119 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
typedef signed long long int64_t;
typedef unsigned long long uint64_t;
# 129 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
typedef int64_t int_least64_t;
typedef uint64_t uint_least64_t;
# 159 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
  typedef signed int int_fast8_t;
  typedef unsigned int uint_fast8_t;




  typedef signed int int_fast16_t;
  typedef unsigned int uint_fast16_t;




  typedef signed int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 213 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
  typedef int_least64_t int_fast64_t;
  typedef uint_least64_t uint_fast64_t;







  typedef long long int intmax_t;
# 231 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
  typedef long long unsigned int uintmax_t;
# 243 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h" 3 4
typedef signed int intptr_t;
typedef unsigned int uintptr_t;
# 4 "c:\\yagarto\\bin\\../lib/gcc/arm-none-eabi/4.6.2/include/stdint.h" 2 3 4
# 23 "mikes_project_main.c" 2






  uint32_t SystemCoreClock;
# 39 "mikes_project_main.c"
typedef struct
{
  uint32_t MODER;
  uint32_t OTYPER;
  uint32_t OSPEEDR;
  uint32_t PUPDR;
  uint32_t IDR;
  uint32_t ODR;
  uint16_t BSRRL;
  uint16_t BSRRH;
  uint32_t LCKR;
  uint32_t AFR[2];
} GPIO_TypeDef;





typedef struct
{
  uint32_t CR;
  uint32_t PLLCFGR;
  uint32_t CFGR;
  uint32_t CIR;
  uint32_t AHB1RSTR;
  uint32_t AHB2RSTR;
  uint32_t AHB3RSTR;
  uint32_t RESERVED0;
  uint32_t APB1RSTR;
  uint32_t APB2RSTR;
  uint32_t RESERVED1[2];
  uint32_t AHB1ENR;
  uint32_t AHB2ENR;
  uint32_t AHB3ENR;
  uint32_t RESERVED2;
  uint32_t APB1ENR;
  uint32_t APB2ENR;
  uint32_t RESERVED3[2];
  uint32_t AHB1LPENR;
  uint32_t AHB2LPENR;
  uint32_t AHB3LPENR;
  uint32_t RESERVED4;
  uint32_t APB1LPENR;
  uint32_t APB2LPENR;
  uint32_t RESERVED5[2];
  uint32_t BDCR;
  uint32_t CSR;
  uint32_t RESERVED6[2];
  uint32_t SSCGR;
  uint32_t PLLI2SCFGR;
} RCC_TypeDef;




# 1 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdio.h" 1 3 4
# 29 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdio.h" 3 4
# 1 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/_ansi.h" 1 3 4
# 15 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/_ansi.h" 3 4
# 1 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/newlib.h" 1 3 4
# 16 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/_ansi.h" 2 3 4
# 1 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/config.h" 1 3 4



# 1 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/machine/ieeefp.h" 1 3 4
# 5 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/config.h" 2 3 4
# 1 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/features.h" 1 3 4
# 6 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/config.h" 2 3 4
# 17 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/_ansi.h" 2 3 4
# 30 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdio.h" 2 3 4




# 1 "c:\\yagarto\\bin\\../lib/gcc/arm-none-eabi/4.6.2/include/stddef.h" 1 3 4
# 212 "c:\\yagarto\\bin\\../lib/gcc/arm-none-eabi/4.6.2/include/stddef.h" 3 4
typedef unsigned int size_t;
# 35 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdio.h" 2 3 4


# 1 "c:\\yagarto\\bin\\../lib/gcc/arm-none-eabi/4.6.2/include/stdarg.h" 1 3 4
# 40 "c:\\yagarto\\bin\\../lib/gcc/arm-none-eabi/4.6.2/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 38 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdio.h" 2 3 4







# 1 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/reent.h" 1 3 4
# 13 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/reent.h" 3 4
# 1 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/_ansi.h" 1 3 4
# 14 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/reent.h" 2 3 4
# 1 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/_types.h" 1 3 4
# 12 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/_types.h" 3 4
# 1 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/machine/_types.h" 1 3 4






# 1 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/machine/_default_types.h" 1 3 4
# 26 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/machine/_default_types.h" 3 4
typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;
# 36 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/machine/_default_types.h" 3 4
typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 46 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/machine/_default_types.h" 3 4
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 58 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/machine/_default_types.h" 3 4
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 76 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/machine/_default_types.h" 3 4
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 99 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/machine/_default_types.h" 3 4
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 8 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/machine/_types.h" 2 3 4
# 13 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/_types.h" 2 3 4
# 1 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/lock.h" 1 3 4





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 14 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/_types.h" 2 3 4


typedef long _off_t;







typedef short __dev_t;




typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 56 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/_types.h" 3 4
typedef int _ssize_t;






# 1 "c:\\yagarto\\bin\\../lib/gcc/arm-none-eabi/4.6.2/include/stddef.h" 1 3 4
# 353 "c:\\yagarto\\bin\\../lib/gcc/arm-none-eabi/4.6.2/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 64 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/_types.h" 2 3 4



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 15 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/reent.h" 2 3 4






typedef unsigned long __ULong;
# 37 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/reent.h" 3 4
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 89 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/reent.h" 3 4
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 105 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/reent.h" 3 4
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 169 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/reent.h" 3 4
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                     ;
  int (* _write) (struct _reent *, void *, const char *, int)
                            ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 273 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/reent.h" 3 4
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 305 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/reent.h" 3 4
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 580 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/reent.h" 3 4
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;


  struct _atexit *_atexit;
  struct _atexit _atexit0;


  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 818 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/reent.h" 3 4
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 46 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdio.h" 2 3 4
# 1 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/types.h" 1 3 4
# 69 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/types.h" 3 4
# 1 "c:\\yagarto\\bin\\../lib/gcc/arm-none-eabi/4.6.2/include/stddef.h" 1 3 4
# 150 "c:\\yagarto\\bin\\../lib/gcc/arm-none-eabi/4.6.2/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 324 "c:\\yagarto\\bin\\../lib/gcc/arm-none-eabi/4.6.2/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 70 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/types.h" 2 3 4
# 1 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/machine/types.h" 1 3 4
# 19 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/machine/types.h" 3 4
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/types.h" 2 3 4
# 92 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/types.h" 3 4
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;



typedef unsigned short ushort;
typedef unsigned int uint;



typedef unsigned long clock_t;




typedef long time_t;




struct timespec {
  time_t tv_sec;
  long tv_nsec;
};

struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};


typedef long daddr_t;
typedef char * caddr_t;






typedef unsigned short ino_t;
# 162 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/types.h" 3 4
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;





typedef int pid_t;







typedef long key_t;

typedef _ssize_t ssize_t;
# 195 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/types.h" 3 4
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 222 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/types.h" 3 4
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 253 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/types.h" 3 4
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;
# 47 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdio.h" 2 3 4



typedef __FILE FILE;




typedef _fpos_t fpos_t;





# 1 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/sys/stdio.h" 1 3 4
# 62 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdio.h" 2 3 4
# 171 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdio.h" 3 4
FILE * tmpfile (void);
char * tmpnam (char *);
int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *, const char *, FILE *);
void setbuf (FILE *, char *);
int setvbuf (FILE *, char *, int, size_t);
int fprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int fgetc (FILE *);
char * fgets (char *, int, FILE *);
int fputc (int, FILE *);
int fputs (const char *, FILE *);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *, size_t _size, size_t _n, FILE *);
size_t fwrite (const void * , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *, fpos_t *);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *_name, const char *_type);
int sprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);






int fseeko (FILE *, off_t, int);
off_t ftello ( FILE *);




int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * asnprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int asprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int fcloseall (void);
int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int snprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * tempnam (const char *, const char *);
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vasprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vfscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsnprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 313 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdio.h" 3 4
FILE * fdopen (int, const char *);

int fileno (FILE *);
int getw (FILE *);
int pclose (FILE *);
FILE * popen (const char *, const char *);
int putw (int, FILE *);
void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);
int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 338 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdio.h" 3 4
int dprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

FILE * fmemopen (void *, size_t, const char *);


FILE * open_memstream (char **, size_t *);



int vdprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;







int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *, int, FILE *);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *, size_t, const char *);
FILE * _fopen_r (struct _reent *, const char *, const char *);
FILE * _freopen_r (struct _reent *, const char *, const char *, FILE *);
int _fprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *, FILE *);
size_t _fread_r (struct _reent *, void *, size_t _size, size_t _n, FILE *);
int _fscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * , size_t _size, size_t _n, FILE *);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);
# 515 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdio.h" 3 4
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 535 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdio.h" 3 4
FILE *funopen (const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))



                                   ;
FILE *_funopen_r (struct _reent *, const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))



                                   ;







typedef ssize_t cookie_read_function_t(void *__cookie, char *__buf, size_t __n);
typedef ssize_t cookie_write_function_t(void *__cookie, const char *__buf,
     size_t __n);




typedef int cookie_seek_function_t(void *__cookie, off_t *__off, int __whence);

typedef int cookie_close_function_t(void *__cookie);
typedef struct
{


  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
FILE *fopencookie (void *__cookie, const char *__mode, cookie_io_functions_t __functions)
                                                         ;
FILE *_fopencookie_r (struct _reent *, void *__cookie, const char *__mode, cookie_io_functions_t __functions)
                                                         ;
# 683 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdio.h" 3 4

# 95 "mikes_project_main.c" 2
# 106 "mikes_project_main.c"
typedef enum IRQn
{

  NonMaskableInt_IRQn = -14,
  MemoryManagement_IRQn = -12,
  BusFault_IRQn = -11,
  UsageFault_IRQn = -10,
  SVCall_IRQn = -5,
  DebugMonitor_IRQn = -4,
  PendSV_IRQn = -2,
  SysTick_IRQn = -1,

  WWDG_IRQn = 0,
  PVD_IRQn = 1,
  TAMP_STAMP_IRQn = 2,
  RTC_WKUP_IRQn = 3,
  FLASH_IRQn = 4,
  RCC_IRQn = 5,
  EXTI0_IRQn = 6,
  EXTI1_IRQn = 7,
  EXTI2_IRQn = 8,
  EXTI3_IRQn = 9,
  EXTI4_IRQn = 10,
  DMA1_Stream0_IRQn = 11,
  DMA1_Stream1_IRQn = 12,
  DMA1_Stream2_IRQn = 13,
  DMA1_Stream3_IRQn = 14,
  DMA1_Stream4_IRQn = 15,
  DMA1_Stream5_IRQn = 16,
  DMA1_Stream6_IRQn = 17,
  ADC_IRQn = 18,
  CAN1_TX_IRQn = 19,
  CAN1_RX0_IRQn = 20,
  CAN1_RX1_IRQn = 21,
  CAN1_SCE_IRQn = 22,
  EXTI9_5_IRQn = 23,
  TIM1_BRK_TIM9_IRQn = 24,
  TIM1_UP_TIM10_IRQn = 25,
  TIM1_TRG_COM_TIM11_IRQn = 26,
  TIM1_CC_IRQn = 27,
  TIM2_IRQn = 28,
  TIM3_IRQn = 29,
  TIM4_IRQn = 30,
  I2C1_EV_IRQn = 31,
  I2C1_ER_IRQn = 32,
  I2C2_EV_IRQn = 33,
  I2C2_ER_IRQn = 34,
  SPI1_IRQn = 35,
  SPI2_IRQn = 36,
  USART1_IRQn = 37,
  USART2_IRQn = 38,
  USART3_IRQn = 39,
  EXTI15_10_IRQn = 40,
  RTC_Alarm_IRQn = 41,
  OTG_FS_WKUP_IRQn = 42,
  TIM8_BRK_TIM12_IRQn = 43,
  TIM8_UP_TIM13_IRQn = 44,
  TIM8_TRG_COM_TIM14_IRQn = 45,
  TIM8_CC_IRQn = 46,
  DMA1_Stream7_IRQn = 47,
  FSMC_IRQn = 48,
  SDIO_IRQn = 49,
  TIM5_IRQn = 50,
  SPI3_IRQn = 51,
  UART4_IRQn = 52,
  UART5_IRQn = 53,
  TIM6_DAC_IRQn = 54,
  TIM7_IRQn = 55,
  DMA2_Stream0_IRQn = 56,
  DMA2_Stream1_IRQn = 57,
  DMA2_Stream2_IRQn = 58,
  DMA2_Stream3_IRQn = 59,
  DMA2_Stream4_IRQn = 60,
  ETH_IRQn = 61,
  ETH_WKUP_IRQn = 62,
  CAN2_TX_IRQn = 63,
  CAN2_RX0_IRQn = 64,
  CAN2_RX1_IRQn = 65,
  CAN2_SCE_IRQn = 66,
  OTG_FS_IRQn = 67,
  DMA2_Stream5_IRQn = 68,
  DMA2_Stream6_IRQn = 69,
  DMA2_Stream7_IRQn = 70,
  USART6_IRQn = 71,
  I2C3_EV_IRQn = 72,
  I2C3_ER_IRQn = 73,
  OTG_HS_EP1_OUT_IRQn = 74,
  OTG_HS_EP1_IN_IRQn = 75,
  OTG_HS_WKUP_IRQn = 76,
  OTG_HS_IRQn = 77,
  DCMI_IRQn = 78,
  CRYP_IRQn = 79,
  HASH_RNG_IRQn = 80,
  FPU_IRQn = 81
} IRQn_Type;
# 210 "mikes_project_main.c"
typedef struct
{
  uint32_t CTRL;
  uint32_t LOAD;
  uint32_t VAL;
  uint32_t CALIB;
} SysTick_Type;





typedef struct
{
  uint32_t ISER[8];
       uint32_t RESERVED0[24];
  uint32_t ICER[8];
       uint32_t RSERVED1[24];
  uint32_t ISPR[8];
       uint32_t RESERVED2[24];
  uint32_t ICPR[8];
       uint32_t RESERVED3[24];
  uint32_t IABR[8];
       uint32_t RESERVED4[56];
  uint8_t IP[240];
       uint32_t RESERVED5[644];
  uint32_t STIR;
} NVIC_Type;





typedef struct
{
  uint32_t CPUID;
  uint32_t ICSR;
  uint32_t VTOR;
  uint32_t AIRCR;
  uint32_t SCR;
  uint32_t CCR;
  uint8_t SHP[12];
  uint32_t SHCSR;
  uint32_t CFSR;
  uint32_t HFSR;
  uint32_t DFSR;
  uint32_t MMFAR;
  uint32_t BFAR;
  uint32_t AFSR;
  uint32_t PFR[2];
  uint32_t DFR;
  uint32_t ADR;
  uint32_t MMFR[4];
  uint32_t ISAR[5];
       uint32_t RESERVED0[5];
  uint32_t CPACR;
} SCB_Type;
# 306 "mikes_project_main.c"
void SystemCoreClockUpdate(void)
{
  uint32_t tmp = 0, pllvco = 0, pllp = 2, pllsource = 0, pllm = 2;


  tmp = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->CFGR & ((uint32_t)0x0000000C);

  switch (tmp)
  {
    case 0x00:
      SystemCoreClock = ((uint32_t)16000000);
      break;
    case 0x04:
      SystemCoreClock = ((uint32_t)25000000);
      break;
    case 0x08:




      pllsource = (((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->PLLCFGR & ((uint32_t)0x00400000)) >> 22;
      pllm = ((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->PLLCFGR & ((uint32_t)0x0000003F);

      if (pllsource != 0)
      {

        pllvco = (((uint32_t)25000000) / pllm) * ((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->PLLCFGR & ((uint32_t)0x00007FC0)) >> 6);
      }
      else
      {

        pllvco = (((uint32_t)16000000) / pllm) * ((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->PLLCFGR & ((uint32_t)0x00007FC0)) >> 6);
      }

      pllp = (((((RCC_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x3800))->PLLCFGR & ((uint32_t)0x00030000)) >>16) + 1 ) *2;
      SystemCoreClock = pllvco/pllp;
      break;
    default:
      SystemCoreClock = ((uint32_t)16000000);
      break;
  }
}



static inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - 4)) & 0xff); }
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)] = ((priority << (8 - 4)) & 0xff); }
}


static inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1) > (0xFFFFFFUL << 0)) return (1);

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = ticks - 1;
  NVIC_SetPriority (SysTick_IRQn, (1<<4) - 1);
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL = 0;
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2) |
                   (1UL << 1) |
                   (1UL << 0);
  return (0);
}

volatile uint32_t msTicks;



void SysTick_Handler(void) {
  msTicks++;
}




void Delay (uint32_t dlyTicks) {
  uint32_t curTicks;




  curTicks = 0x12345;
  while(curTicks-- > 0);
  return;
}
# 443 "mikes_project_main.c"
typedef struct tone {
 int frequency;
 int intensity;
} Tone;





Tone toneArr[1024];
int numTones;
int testMode;


 typedef enum {INITIAL_LVL1, UP_DETENT1, DOWN_DETENT1} Encoder_state_lvl1;
  Encoder_state_lvl1 encoder_state_lvl1 = INITIAL_LVL1;
 typedef enum {INITIAL, UP1, UP2, UP3, DOWN1, DOWN2, DOWN3} Encoder_state_lvl2;
 Encoder_state_lvl2 encoder_state_lvl2 = INITIAL;
# 478 "mikes_project_main.c"
 unsigned int digitvals[5]= {0,0,0,0, 13};
# 551 "mikes_project_main.c"
void mikes_IO_init();
void timer_init(unsigned int reloadVal);
void display_num_at_digit(unsigned int num, unsigned int position);
void display_bitpattern_at_digit(int gpioA_bsrr_cathode_bitpattern, int gpioC_bsrr_cathode_bitpattern,
                 int gpioA_bsrr_anode_bitpattern, int gpioC_bsrr_anode_bitpattern);
void translate_digit_to_anode_bitpattern(unsigned int position, int * bitpatterns);
unsigned int mikes_get_switch(unsigned int swtch);
unsigned int read_encoderA();
unsigned int read_encoderB();
void sitoarr(unsigned int * int_arr, int num);
int arrtosi(unsigned int *int_arr);
void decrement_arr(unsigned int * int_arr, int step);
void increment_arr(unsigned int * int_arr, int step);
int update_fsm_level2(unsigned int encA, unsigned int encB);
void blink_playmode_led(unsigned int * intenvals_param);
unsigned int getTime();
void reset_intensity(unsigned int * inten_array);
# 582 "mikes_project_main.c"
void display_num_at_digit(unsigned int num, unsigned int position) {
 int an_bitpatterns[2] = {0};

 switch (num) {



  case 0:
   translate_digit_to_anode_bitpattern(position, an_bitpatterns);
   display_bitpattern_at_digit(0x00910022, 0x000d0000, an_bitpatterns[0], an_bitpatterns[1]);
   break;
  case 1:
   translate_digit_to_anode_bitpattern(position, an_bitpatterns);
   display_bitpattern_at_digit(0x000100b2, 0x00080005, an_bitpatterns[0], an_bitpatterns[1]);
   break;
  case 2:
   translate_digit_to_anode_bitpattern(position, an_bitpatterns);
   display_bitpattern_at_digit(0x00930020, 0x00050009, an_bitpatterns[0], an_bitpatterns[1]);
   break;
  case 3:
   translate_digit_to_anode_bitpattern(position, an_bitpatterns);
   display_bitpattern_at_digit(0x00830030, 0x000c0001, an_bitpatterns[0], an_bitpatterns[1]);
   break;
  case 4:
   translate_digit_to_anode_bitpattern(position, an_bitpatterns);
   display_bitpattern_at_digit(0x000300b0, 0x00090004, an_bitpatterns[0], an_bitpatterns[1]);
   break;
  case 5:
   translate_digit_to_anode_bitpattern(position, an_bitpatterns);
   display_bitpattern_at_digit(0x00820031, 0x000d0000, an_bitpatterns[0], an_bitpatterns[1]);
   break;
  case 6:
   translate_digit_to_anode_bitpattern(position, an_bitpatterns);
   display_bitpattern_at_digit(0x00920021, 0x000d0000, an_bitpatterns[0], an_bitpatterns[1]);
   break;
  case 7:
   translate_digit_to_anode_bitpattern(position, an_bitpatterns);
   display_bitpattern_at_digit(0x000100b2, 0x000c0001, an_bitpatterns[0], an_bitpatterns[1]);
   break;
  case 8:
   translate_digit_to_anode_bitpattern(position, an_bitpatterns);
   display_bitpattern_at_digit(0x00930020, 0x000d0000, an_bitpatterns[0], an_bitpatterns[1]);
   break;
  case 9:
   translate_digit_to_anode_bitpattern(position, an_bitpatterns);
   display_bitpattern_at_digit(0x00830030, 0x000d0000, an_bitpatterns[0], an_bitpatterns[1]);
   break;

  case 10:
   translate_digit_to_anode_bitpattern(position, an_bitpatterns);
   display_bitpattern_at_digit(0x000000b3, 0x00080005, an_bitpatterns[0], an_bitpatterns[1]);
  break;
  case 13:
   translate_digit_to_anode_bitpattern(position, an_bitpatterns);
   display_bitpattern_at_digit(0x000000b3, 0x0000000d, an_bitpatterns[0], an_bitpatterns[1]);
  break;
  case 11:
    translate_digit_to_anode_bitpattern(position, an_bitpatterns);
    display_bitpattern_at_digit(0x000000b3, 0x00010004, an_bitpatterns[0], an_bitpatterns[1]);
    break;
  case 14:
    translate_digit_to_anode_bitpattern(position, an_bitpatterns);
    display_bitpattern_at_digit(0x00010022, 0x0000000d, an_bitpatterns[0], an_bitpatterns[1]);
    break;
  case 15:
    translate_digit_to_anode_bitpattern(position, an_bitpatterns);
    display_bitpattern_at_digit(0x00200003, 0x0000000d, an_bitpatterns[0], an_bitpatterns[1]);
    break;
  case 16:
    translate_digit_to_anode_bitpattern(position, an_bitpatterns);
    display_bitpattern_at_digit(0x000000b3, 0x00040001, an_bitpatterns[0], an_bitpatterns[1]);
    break;
  case 17:
    translate_digit_to_anode_bitpattern(position, an_bitpatterns);
    display_bitpattern_at_digit(0x00020021, 0x0000000d, an_bitpatterns[0], an_bitpatterns[1]);
    break;
  case 12:
    translate_digit_to_anode_bitpattern(position, an_bitpatterns);
    display_bitpattern_at_digit(0x000200b1, 0x0000000d, an_bitpatterns[0], an_bitpatterns[1]);
    break;
 }


}
# 676 "mikes_project_main.c"
void translate_digit_to_anode_bitpattern(unsigned int position, int * bitpatterns) {

  switch (position) {


   case 0:
    bitpatterns[0] = 0x00000033;
    bitpatterns[1] = 0x0000000d;
    break;

   case 1:
    bitpatterns[0] = 0x00000033;
    bitpatterns[1] = 0x0001000c;
    break;

   case 2:
    bitpatterns[0] = 0x00000033;
    bitpatterns[1] = 0x00080005;
    break;

   case 3:
    bitpatterns[0] = 0x00020031;
    bitpatterns[1] = 0x0000000d;
    break;

   case 4:
    bitpatterns[0] = 0x00010032;
    bitpatterns[1] = 0x0000000d;
    break;

   case 5:
    bitpatterns[0] = 0x00100023;
    bitpatterns[1] = 0x0000000d;
    break;

   case 6:
    bitpatterns[0] = 0x00200013;
    bitpatterns[1] = 0x0000000d;
    break;

   case 7:
    bitpatterns[0] = 0x00000033;
    bitpatterns[1] = 0x00040009;
    break;

 }

}
# 732 "mikes_project_main.c"
void mikes_display_update() {
 unsigned static int position = 0;
 position = (position % 5) + 1;


 display_num_at_digit(digitvals[position-1], position);
 position++;
}
# 750 "mikes_project_main.c"
int arrtosi(unsigned int *int_arr) {
 int returnNum = 0, i = 3, j = 0;


 while (i != -1 && int_arr[i] != 13) {

  if (int_arr[i] == 12) {
   returnNum *= -1;
   break;
  }
  int curVal = int_arr[i];

  for (j = 0; j < (3-i); j++) curVal *= 10;

  returnNum += curVal;

  i--;
 }
 return returnNum;
}
# 778 "mikes_project_main.c"
void sitoarr(unsigned int * int_arr, int num) {
 int i = 0, j = 0;
 int curNum = num;
 int modVal = 1;


 if (curNum < 0) curNum *= -1;

 for (i = 3; i >= 0; i--) {
  modVal *= 10;
  int_arr[i] = (curNum % modVal);
  curNum -= int_arr[i];
  int_arr[i] = int_arr[i] / (modVal/10);

  if (curNum == 0) {
   i--;
   break;
  }
 }



 if (num < 0) {
  int_arr[i] = 12;
  i--;
 }


 for (i; i >= 0; i--) int_arr[i] = 13;
}







void decrement_arr(unsigned int * int_arr, int step) {

 int num = arrtosi(int_arr);


 num -= step;


 sitoarr(int_arr, num);

}







void increment_arr(unsigned int * int_arr, int step) {

 int num = arrtosi(int_arr);


 num += step;


 sitoarr(int_arr, num);
}






int update_fsm_level2(unsigned int encA, unsigned int encB) {
 int fsm_lvl2_output = 0;
     switch (encoder_state_lvl2) {

     case INITIAL:
      if (!encA && encB) encoder_state_lvl2 = UP1;
      else if (encA && !encB) encoder_state_lvl2 = DOWN1;
      else encoder_state_lvl2 = INITIAL;
      break;

     case UP1:
      if (!encA && encB) encoder_state_lvl2 = UP1;
      else if (!encA && !encB) encoder_state_lvl2 = UP2;
      else encoder_state_lvl2 = INITIAL;
      break;

     case UP2:
      if (!encA && !encB) encoder_state_lvl2 = UP2;
      else if (encA && !encB) encoder_state_lvl2 = UP3;
      else encoder_state_lvl2 = INITIAL;
      break;

     case UP3:
      if (encA && !encB) { encoder_state_lvl2 = UP3; }
      else if (encA && encB) {
       encoder_state_lvl2 = INITIAL;

       fsm_lvl2_output = 1;
      }
      else { encoder_state_lvl2 = INITIAL; }
      break;


     case DOWN1:
      if (encA && !encB) encoder_state_lvl2 = DOWN1;
      else if (!encA && !encB) encoder_state_lvl2 = DOWN2;
      else encoder_state_lvl2 = INITIAL;
      break;

     case DOWN2:
      if (!encA && !encB) encoder_state_lvl2 = DOWN2;
      else if (!encA && encB) encoder_state_lvl2 = DOWN3;
      else encoder_state_lvl2 = INITIAL;
      break;

     case DOWN3:
      if (!encA && encB) { encoder_state_lvl2 = DOWN3; }
      else if (encA && encB) {
       encoder_state_lvl2 = INITIAL;

       fsm_lvl2_output = -1;;
      }
      else {
 encoder_state_lvl2 = INITIAL;
      }
      break;
     }


   return fsm_lvl2_output;
    }


void blink_playmode_led(unsigned int * intenvals_param) {
 unsigned int blinkTime = 150;
 unsigned int curTime = getTime();



     if ( (curTime % (2*blinkTime)) == 0 ) {

      intenvals_param[4] = 14;
      digitvals[4] = 14;
     } else if ( (curTime % (blinkTime)) == 0 ) {

     intenvals_param[4] = 13;
     digitvals[4] = 13;
    }
   }






unsigned int prevTime = 0;
unsigned int offset = 0;
void blink_reset_led(unsigned int timeOfLastReset) {
 unsigned int timeSinceLastReset = (getTime() - timeOfLastReset) / 900;
 unsigned int period = 900 / timeSinceLastReset;
 unsigned int blinkTime = period/2;
 unsigned int curTime = getTime() + offset;




     if (timeSinceLastReset != prevTime) {

      if (digitvals[4] == 16) digitvals[4] = 13;
      else if (digitvals[4] == 13) digitvals[4] = 16;

      offset += curTime % period;
     } else {
      if ( (curTime % (2*blinkTime)) == 0 ) {
       digitvals[4] = 16;
      } else if ( (curTime % (blinkTime)) == 0 ) {

      digitvals[4] = 13;
     }
   }

    prevTime = timeSinceLastReset;
   }




void reset_intensity(unsigned int * inten_array) {
 inten_array[0] = 13;
 inten_array[1] = 12;
 inten_array[2] = 1;
 inten_array[3] = 0;
}



void off_disp() {
 digitvals[0] = digitvals[1] = digitvals[2] = digitvals[3] = 13;
}

void zero_disp() {
 digitvals[0] = digitvals[1] = digitvals[2] = digitvals[3] = 0;
}






int main (void) {
 unsigned int timeOfLastReset = 0, resetPendingBeginTime = 0;
 int resetPending = 0;
 int curFreq = 0, curInten = 0, numTonesPos = 0;
 testMode = 1;
 numTones = 0;
 unsigned int intenvals[5] = {13, 12, 1, 0, 17};




 unsigned int encA = 1;
 unsigned int encB = 1;
 int fsm_lvl2_output = 0;






 unsigned int buttonIsBeingHit = 0;
 unsigned int actionPerformed = 1;

 unsigned int displayMode = 2;
 unsigned int curDisplayMode = displayMode;
  unsigned int playMode = 0;
 unsigned int freqvals[5] = {0, 1, 2, 5, 10};
 int i=0, j=0, i_sw = 0;


 mikes_IO_init();




 timer_init(0x4380);




 wallClk_init(0x4444);






 while(1) {


   if(!buttonIsBeingHit) {
    for (i_sw=1; i_sw<=12; i_sw++) {

     if (!mikes_get_switch(i_sw)) {

      buttonIsBeingHit = 1;
      actionPerformed = 0;

      for (j = 0; j < 1500; j++) {};

      break;
     }
    }
   }


   if (buttonIsBeingHit && mikes_get_switch(i_sw)) {
    buttonIsBeingHit = 0;

    for (j = 0; j < 1500; j++) {};
   }


   if (!actionPerformed) {
    actionPerformed = 1;
    switch (i_sw) {
     case 1:
      if (displayMode == 1 && testMode && !resetPending) {
       digitvals[0] = freqvals[0] = (freqvals[0] + 1) % 10;
       reset_intensity(intenvals);
      }
      break;

     case 2:
      if (displayMode == 1 && testMode && !resetPending) {
       if (!freqvals[0]) {
        freqvals[0] = 9;
       } else {
        freqvals[0]--;
       }
       digitvals[0] = freqvals[0];
       reset_intensity(intenvals);
      }
      break;

     case 3:
      if (displayMode == 1 && testMode && !resetPending) {
       reset_intensity(intenvals);
       digitvals[1] = freqvals[1] = (freqvals[1] + 1) % 10;
       }
      break;

     case 4:
      if (displayMode == 1 && testMode && !resetPending) {
       reset_intensity(intenvals);
       if (!freqvals[1]) {
        freqvals[1] = 9;
       } else {
        freqvals[1]--;
       }
       digitvals[1] = freqvals[1];
      }
      break;

     case 5:
      if (displayMode == 1 && testMode && !resetPending) {
       reset_intensity(intenvals);
       digitvals[2] = freqvals[2] = (freqvals[2] + 1) % 10;
      }
      break;

     case 6:
      if (displayMode == 1 && testMode && !resetPending) {
       reset_intensity(intenvals);
       if (!freqvals[2]) {
        freqvals[2] = 9;
       } else {
        freqvals[2]--;
       }
       digitvals[2] = freqvals[2];
      }
      break;

     case 7:
      if (displayMode == 1 && testMode && !resetPending) {
       reset_intensity(intenvals);
       digitvals[3] = freqvals[3] = (freqvals[3] + 1) % 10;
      }
      break;

     case 8:
      if (displayMode == 1 && testMode && !resetPending) {
       reset_intensity(intenvals);
       if (!freqvals[3]) {
        freqvals[3] = 9;
       } else {
        freqvals[3]--;
       }
       digitvals[3] = freqvals[3];
      }
      break;

     case 9:
      if(!resetPending) {

      displayMode = 1;
       playMode = 0;
      if (testMode) intenvals[4] = 17;

       digitvals[0] = freqvals[0];
      digitvals[1] = freqvals[1];
      digitvals[2] = freqvals[2];
      digitvals[3] = freqvals[3];
      digitvals[4] = freqvals[4];
      }
      break;

     case 10:

     if(!resetPending) {

      switch (displayMode) {

       case 2:
       playMode = 0;
       intenvals[4] = 17;
       for (i=0; i<=4; i++) digitvals[i] = intenvals[i];
       displayMode = 0;
       break;

        case 1:
       playMode = 0;
       if (testMode) intenvals[4] = 17;
       for (i=0; i<=4; i++) digitvals[i] = intenvals[i];
       displayMode = 0;
       break;

        case 0:
       if (testMode) {
        playMode = !playMode;
        if (playMode) {
         intenvals[4] = 14;
         digitvals[4] = 14;
        } else {
         intenvals[4] = 17;
         digitvals[4] = 17;
        }
      }
       break;
      }
     }
      break;

     case 11:

      timeOfLastReset = getTime();


      if (displayMode != 2) {
       int timeStart = getTime();
       int timeHeld = 0;
       int alreadyHere = 0;
       while(1) {

        timeHeld = getTime() - timeStart;


        if (mikes_get_switch(11) && timeHeld < 900) {
         if (testMode == 0) break;
         if (numTones > 0) numTones--;
         break;
        }


        if (timeHeld >= 900 && timeHeld < 4500 && !alreadyHere) {
         alreadyHere = 1;
         if (numTones <= 0) continue;
         if (testMode) {
          testMode = 0;

          curFreq = arrtosi(freqvals);
          curInten = arrtosi(intenvals);
          numTonesPos = numTones - 1;

          sitoarr(freqvals, toneArr[numTonesPos].frequency);
          sitoarr(intenvals, toneArr[numTonesPos].intensity);
          intenvals[4] = freqvals[4] = 15;
          int iter = 0;
          for (iter=0; iter<=4; iter++) { digitvals[iter] = intenvals[iter]; }
          curDisplayMode = displayMode;
          displayMode = 0;
         }
         else if (!testMode) {

          testMode = 1;
          displayMode = curDisplayMode;
          sitoarr(freqvals, curFreq);
          freqvals[4] = 10;
          sitoarr(intenvals, curInten);
          intenvals[4] = 17;


          int it = 0;
          if (displayMode == 1) {
           for (it=0; it<=4; it++) digitvals[it] = freqvals[it];
          } else if (displayMode == 0) {
           for (it=0; it<=4; it++) digitvals[it] = intenvals[it];
          }

         }
         continue;

        }


        if (alreadyHere && mikes_get_switch(11)) {
         break;
        }


        if (timeHeld >= 4500) {
          resetPending = 1;
         resetPendingBeginTime= getTime();
          break;
        }



       }
      }
      break;

     case 12:

      if (displayMode != 2 && !resetPending) {
       if (testMode == 1) {
       toneArr[numTones].frequency = arrtosi(freqvals);
       toneArr[numTones].intensity = arrtosi(intenvals);
       numTones++;
       } else if (testMode == 0) {
         if (numTonesPos > 0) numTonesPos--;
        else numTonesPos = numTones - 1;
         sitoarr(freqvals, toneArr[numTonesPos].frequency);
         sitoarr(intenvals, toneArr[numTonesPos].intensity);
         intenvals[4] = freqvals[4] = 15;
         int iter = 0;
         for (iter=0; iter<=4; iter++) { digitvals[iter] = intenvals[iter]; }
         displayMode = 0;
       }
      }
      break;
    }
   }




   if ( displayMode == 1 &&
    (arrtosi(freqvals) < 125 || (freqvals[0] == 9 && freqvals[1] != 0 && freqvals[2] != 0 && freqvals[3] != 0)) ) {
    digitvals[0] = freqvals[0] = 0;
    digitvals[1] = freqvals[1] = 1;
    digitvals[2] = freqvals[2] = 2;
    digitvals[3] = freqvals[3] = 5;
   }

   if (displayMode == 1 && arrtosi(freqvals) > 8000) {
    digitvals[0] = freqvals[0] = 8;
    digitvals[1] = freqvals[1] = 0;
    digitvals[2] = freqvals[2] = 0;
    digitvals[3] = freqvals[3] = 0;
   }
# 1328 "mikes_project_main.c"
   if (displayMode == 0 && testMode) {
    unsigned int origLedPattern = digitvals[4];


   encA = read_encoderA();
   encB = read_encoderB();


    fsm_lvl2_output = update_fsm_level2(encA, encB);


    switch (encoder_state_lvl1) {
     case INITIAL_LVL1:

      if (fsm_lvl2_output == 1) {
       encoder_state_lvl1 = UP_DETENT1;
      } else if (fsm_lvl2_output == -1) {
       encoder_state_lvl1 = DOWN_DETENT1;
      } else if (fsm_lvl2_output == 0) {

      }
      break;

     case UP_DETENT1:
      if (fsm_lvl2_output == 1) {

       if (intenvals[1] != 1 || intenvals[2] != 1 || intenvals[3] != 0) increment_arr(intenvals, 5);
       for (i=0; i<=4; i++) digitvals[i] = intenvals[i];
       encoder_state_lvl1 = INITIAL_LVL1;
      } else if (fsm_lvl2_output == -1) {

       encoder_state_lvl1 = DOWN_DETENT1;
      } else if (fsm_lvl2_output == 0) {

      }
      break;

     case DOWN_DETENT1:
      if (fsm_lvl2_output == 1) {

       encoder_state_lvl1 = UP_DETENT1;
      } else if (fsm_lvl2_output == -1) {

       if (intenvals[1] != 12 || intenvals[2] != 1 || intenvals[3] != 0) decrement_arr(intenvals, 5);
       for (i=0; i<=4; i++) digitvals[i] = intenvals[i];
       encoder_state_lvl1 = INITIAL_LVL1;
      } else if (fsm_lvl2_output == 0) {

      }
      break;
     }
   digitvals[4] = origLedPattern;
  }




  if (playMode && testMode) blink_playmode_led(intenvals);


  if (resetPending) blink_reset_led(timeOfLastReset);



  if ( resetPending && (getTime() - resetPendingBeginTime) >= 4500) {


   freqvals[4] = intenvals[4] = digitvals[4] = 11;
   zero_disp();
   unsigned int curTime = getTime();
   while(1) {
    if (getTime() > (curTime + 1800)) break;
    else if (getTime() > (curTime + 1500)) off_disp();
    else if (getTime() > (curTime + 1200)) zero_disp();
    else if (getTime() > (curTime + 900)) off_disp();
    else if (getTime() > (curTime + 600)) zero_disp();
    else if (getTime() > (curTime + 300)) off_disp();
   }


   freqvals[0] = 0; freqvals[1] = 1; freqvals[2] = 2; freqvals[3] = 5; freqvals[4] = 10;
   intenvals[0] = 13; intenvals[1] = 12; intenvals[2] = 1; intenvals[3] = 0; intenvals[4] = 17;
   digitvals[0] = 0; digitvals[1] = 0; digitvals[2] = 0; digitvals[3] = 0; digitvals[4] = 13;


   numTones = 0;


   playMode = 0;
   testMode = 1;


   resetPending = 0;


   displayMode = 2;


   offset = prevTime = 0;
  }



  if (resetPending) {

   if (mikes_get_switch(11)) {
    offset = prevTime = 0;
    resetPending = 0;
    if (testMode) {
     if (displayMode == 1) {
      digitvals[4] = 10;
     } else if (displayMode == 0) {
      digitvals[4] = 17;
     }
    } else {
     digitvals[4] = 15;
    }
   }
  }


 }
}
