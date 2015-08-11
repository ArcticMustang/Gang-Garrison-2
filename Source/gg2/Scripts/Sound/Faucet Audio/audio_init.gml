if (faudio_init() == 0)
{
    sample_init();
}
else
{
    console_print(faudio_get_error());
}
