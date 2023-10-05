// Learn more at https://deno.land/manual/examples/module_metadata#concepts
if (import.meta.main) {
  const res = await fetch("http://radiko.jp/area");
  const body = await res.text();
  console.log(body);
}
